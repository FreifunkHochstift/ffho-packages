return function(form, uci)
	local default = require 'gluon.site_config'
	local tools = require 'gluon.site_generate'

	local sites = tools.get_config('/lib/gluon/site-select/sites.json')
	
	local s = form:section(Section, nil, translate('gluon-config-mode:site-select'))

	local o = s:option(ListValue, 'community', translate('Region'))
	o.optional = false

	if uci:get_bool('gluon-setup-mode', uci:get_first('gluon-setup-mode','setup_mode'), 'configured')  then
		o:value(default.site_code, default.site_name)
	else
		o:value('')
	end

	for _, site in pairs(sites) do
		if (site.site_select or {}).hidden ~= 1 then
			o:value(site.site_code, site.site_name)
		end
	end

	function o:write(data)
		if data ~= uci:get('currentsite', 'current', 'name') then
			tools.set_site_code(data, false)
		end

		if data ~= default.site_code then
			os.execute('sh "/lib/gluon/site-select/site-upgrade"')
		end
	end

	return {'currentsite'}
end
