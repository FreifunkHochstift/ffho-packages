m = Map("system", translate("Remote Syslog"), translate(
  "If you want to use a remote syslog server, you can set it up here."))
m.pageaction = false
m.template = "cbi/simpleform"

s = m:section(TypedSection, "system", nil)
s.addremove = false
s.anonymous = true

o = s:option(Flag, "log_remote", translate("Enable"))
o.rmempty = false

o = s:option(Value, "log_ip", translate("IP"))
o.placeholder = "0.0.0.0"
o.datatype = "ipaddr"

o = s:option(Value, "log_port", translate("Port"))
o.placeholder = 514
o.datatype = "port"

return m

