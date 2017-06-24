--[[
Copyright 2013 Nils Schneider <nils@nilsschneider.net>
Copyright 2017 Karsten Böddeker <freifunk@kb-light.de>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0
]]--

local uci = require('simple-uci').cursor()
local autoupdater = uci:get_first('autoupdater', 'autoupdater')
local wifi-fallback = uci:get_first('autoupdater-wifi-fallback', 'autoupdater-wifi-fallback')

local f = Form(translate('Automatic updates'))
local s = f:section(Section)
local o

o = s:option(Flag, 'enabled', translate('Enable'))
o.default = uci:get_bool('autoupdater', autoupdater, 'enabled')
function o:write(data)
	uci:set('autoupdater', autoupdater, 'enabled', data)
end

o = s:option(ListValue, 'branch', translate('Branch'))
uci:foreach('autoupdater', 'branch',
	function (section)
		o:value(section['.name'])
	end
)
o.default = uci:get('autoupdater', autoupdater, 'branch')
function o:write(data)
	uci:set('autoupdater', autoupdater, 'branch', data)
end

local s = f:section(Section, translate('Wifi fallback updates'))

o = s:option(Flag, 'enabled', translate('Enable'))
o.default = uci:get_bool('autoupdater-wifi-fallback', wifi-fallback, 'enabled')
function o:write(data)
	uci:set('autoupdater-wifi-fallback', wifi-fallback, 'enabled', data)
	uci:commit('autoupdater-wifi-fallback')
end

function f:write()
	uci:commit('autoupdater')
end

return f
