--[[
LuCI - Lua Configuration Interface

Copyright 2013 Nils Schneider <nils@nilsschneider.net>
Copyright 2016 Karsten Böddeker <freifunk@kb-light.de>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

$Id$
]]--

m = Map("autoupdater", translate("Automatic updates"))

s = m:section(TypedSection, "autoupdater", nil)
s.addremove = false
s.anonymous = true

s:option(Flag, "enabled", translate("Enable"))
f = s:option(ListValue, "branch", translate("Branch"))

uci.cursor():foreach("autoupdater", "branch", function (section) f:value(section[".name"]) end)

m2 = Map("autoupdater-wifi-fallback", translate("Wifi fallback updates"))

s2 = m2:section(TypedSection, "autoupdater-wifi-fallback", nil)
s2.addremove = false
s2.anonymous = true

s2:option(Flag, "enabled", translate("Enable"))

local c = Compound(m, m2)
c.pageaction = false
c.template = "cbi/simpleform"
return c

