#!/usr/bin/lua
local uci = require('simple-uci').cursor()
local iwinfo = require 'iwinfo'

function get_available_wifi_networks()
  local radios = {}

  uci:foreach('wireless', 'wifi-device',
    function(s)
      radios[s['.name']] = {}
    end
  )

  for radio, _ in pairs(radios) do
    local wifitype = iwinfo.type(radio)
    local iw = iwinfo[wifitype]
    if not iw then
      return null
	end
    local tmplist = iw.scanlist(radio)
    for _, net in ipairs(tmplist) do
      if net.ssid and net.bssid and net.ssid:match('.*[Ff][Rr][Ee][Ii][Ff][Uu][Nn][Kk].*') then
        table.insert (radios[radio], net)
      end
    end
  end

  return radios
end

function get_update_hosts(branch)
  local hosts = {}
  local mirrors = uci:get_list('autoupdater', branch, 'mirror')

  for _, mirror in ipairs(mirrors) do
    local host = mirror:match('://%[?([a-zA-Z0-9\:\.]+)%]?/')
    table.insert(hosts, 1, host)
  end
  return hosts
end
