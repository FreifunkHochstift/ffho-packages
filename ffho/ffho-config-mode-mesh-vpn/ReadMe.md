ffho-config-mode-mesh-vpn
=========================

Costomization of `gluon-config-mode-mesh-vpn` to use the contactinformation
within the reboot page.

site/i18n/*.po
--------------

Within `msgid "gluon-config-mode:pubkey"` you can use:
- `<%=contact%>`
- `<%=hostname%>`
- `<%=pubkey%>`
- `<%=sysconfig.*%>`

### example
```
msgid "gluon-config-mode:pubkey"
msgstr ""
"<div class=\"the-key\">"
"<%=hostname%><br/><br/>"
"# Owner: <%=contact%><br/>"
"# MAC: <%=sysconfig.primary_mac%><br/>"
"key \"<%= pubkey %>\";"
"</div>"
```
