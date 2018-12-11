return function(form, uci)
	local default = require 'gluon.site'
	local tools = require 'gluon.site_generate'

	local sites = tools.get_config('/lib/gluon/site-select/sites.json')

	local site_i18n = i18n 'gluon-site'
	local pkg_i18n = i18n 'ffho-config-mode-site-select'
	local help = site_i18n._translate('gluon-config-mode:site-select') or pkg_i18n.translate(
		'Here you have the possibility of selecting the region in which '
		.. 'your node is placed. Please keep in mind that your router '
		.. 'connects only with the mesh of the selected region.'
	)
	local s = form:section(Section, nil, help)

	local o = s:option(ListValue, 'community', translate('Region'))
	o.optional = false

	if uci:get_bool('gluon-setup-mode', uci:get_first('gluon-setup-mode','setup_mode'), 'configured')  then
		o:value(default.site_code(), default.site_name())
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

		if data ~= default.site_code() then
			os.execute('sh "/lib/gluon/site-select/site-upgrade"')
		end
	end

	return {'currentsite'}
end
