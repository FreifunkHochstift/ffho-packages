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
        local ssid = net.ssid:match('.*[Ff][Rr][Ee][Ii][Ff][Uu][Nn][Kk].*')
        if ssid then
          return radio, ssid
        end
      end
    end
  end

  return false
end

function get_update_hosts()
  local hosts = {}
  local branch = uci:get('autoupdater', 'settings', 'branch')
  local mirrors = uci:get_list('autoupdater', branch, 'mirror')

  while #mirrors > 0 do
    local m = table.remove(mirrors)
    mirror = m:match("://%[?([a-zA-Z0-9\:\.]+)%]?/")
    table.insert(hosts, 1, mirror)
  end
  return hosts
end
