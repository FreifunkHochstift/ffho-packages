ffho-ebtables-net-rules
=======================

Additional ebtables rules for Freifunk-Nodes

site.conf
---------

**prefix4:**
- IPv4 prefix

**prefix6:**
- IPv6 prefix

**additional_prefix6: optional**
- list of additional IPv6 prefix

### example
```lua
{
  prefix4 = '10.132.0.0./18',
  prefix6 = 'fdca:ffee:ff12:132::/64',
  additional_prefix6 = { '2a03:2260:2342:2300::/64' },
  ...
},
```
