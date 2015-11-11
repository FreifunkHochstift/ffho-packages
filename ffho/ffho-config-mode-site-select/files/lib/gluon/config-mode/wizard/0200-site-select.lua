local cbi = require "luci.cbi"
local i18n = require "luci.i18n"
local uci = luci.model.uci.cursor()
local site = require 'gluon.site_config'
local config = require 'gluon.sites'

local M = {}

function M.section(form)
	local msg = i18n.translate('gluon-config-mode:site-select')
	local s = form:section(cbi.SimpleSection, nil, msg)

	local o = s:option(cbi.ListValue, "community", i18n.translate("Region"))
	o.rmempty = false
	o.optional = false

	if uci:get_first("gluon-setup-mode", "setup_mode", "configured") == "0" then
		o:value("")
	else
		o:value(site.site_code, site.site_name)
	end

	for index, tmp in pairs(config) do
		o:value(tmp.site_code, tmp.site_name)
	end
end

function M.handle(data)
	if data.community ~= uci:get('currentsite', 'current', 'name') then
		uci:set('currentsite', 'current', 'name', data.community)
		uci:save('currentsite')
		uci:commit('currentsite')		

		os.execute('sh "/lib/gluon/site-select/site-upgrade"')
	end
end

return M
