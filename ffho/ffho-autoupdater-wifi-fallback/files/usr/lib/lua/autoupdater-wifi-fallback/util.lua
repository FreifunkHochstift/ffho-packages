#!/usr/bin/lua

local uci = require('luci.model.uci').cursor()
local site = require 'gluon.site_config'
local json = require 'luci.jsonc'
local util = require("luci.util")

function get_available_wifi_networks()
  local interfaces = util.split(util.trim(util.exec("iw dev | grep Interface | cut -d' ' -f2")))
  for _, ifname in ipairs(interfaces) do
    for line in io.popen(string.format("iw dev %s scan 2>/dev/null", ifname)):lines() do
      net = line:match(".+.freifunk.net.*")
      if net then
	netname = net:sub(8)
	return netname
      end
    end
  end

  return false
end

function get_site_macs()
  local macs = {}
  local interfaces = util.split(util.trim(util.exec(string.format("iw dev mesh0 scan | grep -B10 %s | grep BSS | cut -f2 -d' ' | cut -f1 -d'('", site.wifi24.ap.ssid))))
  for _, mac in ipairs(interfaces) do
    table.insert(macs, mac)
  end

  return macs
end

function is_in_fallback_mode()
  if uci:get('wireless', 'fallback', 'disabled') == '0' then
    return true
  end
  return false
end

function neighbours(iface)
  local stations = {}
  for k, v in pairs(iface.iw.assoclist(iface.ifname)) do
    table.insert(stations,k:lower())
  end

  return stations
end

function interfaces()
  local interfaces = {}
  for _, line in ipairs(util.split(util.exec('batctl if'))) do
    local ifname = line:match('^(.-): active')
    if ifname ~= nil then
      pcall(function()
        local address = util.trim(fs.readfile('/sys/class/net/' .. ifname .. '/address'))
        local wifitype = iwinfo.type(ifname)
        if wifitype ~= nil then
          interfaces[address] = { ifname = ifname, iw = iwinfo[wifitype] }
        end
      end)
    end
  end

  return interfaces
end

function get_wifi_neighbours()
  local wifi = {}
  for address, iface in pairs(interfaces()) do
    wifi[address] = { neighbours = neighbours(iface) }
  end
  
  if next(wifi) then
    return wifi
  end
end
