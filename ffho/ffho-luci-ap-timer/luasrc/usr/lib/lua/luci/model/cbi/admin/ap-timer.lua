m = Map('ap-timer', translate('AP Timer'), translate(
  'You can setup the AP Timer here'))
m.pageaction = false
m.template = "admin/expertmode"

s = m:section(NamedSection, 'settings', 'ap-timer', nil)
s.addremove = false
s.anonymous = true

o = s:option(Flag, 'enabled', translate('Enabled'))
o.rmempty = false

o = s:option(ListValue, 'type', translate('Type'))
o.default = 'day'
o:value('day', translate('per Day'))

s = m:section(NamedSection, 'all', 'day', 'Daily')
s.addremove = false
s.anonymous = true

o = s:option(DynamicList, 'on', translate('ON'))
o.placeholder = '06:30'
o.datatype = 'rangelength(5, 5)'

o = s:option(DynamicList, 'off', translate('OFF'))
o.placeholder = '23:00'
o.datatype = 'rangelength(5, 5)'

return m
