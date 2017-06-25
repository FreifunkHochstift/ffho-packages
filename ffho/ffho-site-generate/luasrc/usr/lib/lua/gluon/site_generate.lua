#!/usr/bin/lua

local uci = require('simple-uci').cursor()
local json =  require 'luci.jsonc'
local sites_json = '/lib/gluon/site-select/sites.json'

module('gluon.site_generate', package.seeall)

function get_config(file)
  local decoder = json.new()
  local sink = decoder:sink()

  local f = assert(io.open(file))

  while true do
    local chunk = f:read(2048)
    if not chunk or chunk:len() == 0 then break end
    sink(chunk)
  end

  f:close()

  return assert(decoder:get())
end

function get_list()
  local list = {}
  local sites = get_config(sites_json)
  for index, site in pairs(sites) do
    list[site.site_code]=index
  end
  return list
end

local site_list=get_list()

function validate_site(site_code)
  return site_list[site_code]
end

function set_site_code(site_code, force)
  if site_code and (force or validate_site(site_code)) then
    uci:set('currentsite', 'current', 'name', site_code)
    uci:save('currentsite')
    uci:commit('currentsite')
    return true
  end
  return false
end

function replace_patterns(value, subst)
  for k, v in pairs(subst) do
    value = value:gsub(k, v)
  end
  return value
end
