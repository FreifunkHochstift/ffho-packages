#!/usr/bin/lua
local uci = require('luci.model.uci').cursor()
local iwinfo = require "iwinfo"

function get_available_wifi_networks()
  local radios = {}

  uci:foreach('wireless', 'wifi-device',
    function(s)
      table.insert(radios, s['.name'])
    end
  )
  for _, radio in ipairs(radios) do
    local wifitype = iwinfo.type(radio)
    local iw = iwinfo[wifitype]
    if iw then
      local list = iw.scanlist(radio)
      for _, net in ipairs(list) do
        if net.ssid:match('.*[Ff][Rr][Ee][Ii][Ff][Uu][Nn][Kk].*') then
          return radio, net.ssid, net.bssid
        end
      end
    end
  end

  return false
end

function get_update_hosts(branch)
  local hosts = {}
  local mirrors = uci:get_list('autoupdater', branch, 'mirror')

  for _, mirror in ipairs(mirrors) do
    local host = mirror:match("://%[?([a-zA-Z0-9\:\.]+)%]?/")
    table.insert(hosts, 1, host)
  end
  return hosts
end
