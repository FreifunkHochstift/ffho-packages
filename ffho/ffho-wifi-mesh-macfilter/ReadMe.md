ffho-wifi-mesh-macfilter
========================

Setting plink_action [block|open], when 802.11s mesh-interface comes up.

/etc/config/wireless
--------------------

**wireless.wifi-iface.macfilter: optional**
- `disable`, disables the macfilter
- `deny`, blocks the listed MACs by executing
  `iw dev $device station set $mac plink_action block`
- `allow`, only allows the listed MACs by executing
  `iw dev $device mesh_param mesh_auto_open_plink=0` and
  `iw dev $device$ station set $mac plink_action open`

**wireless.$wifi-iface.maclist: optional**
List of MAC addresses (devided by spaces)

### example
```
config wifi-iface 'mesh_radio0'
	option macfilter 'deny'
	option maxlist '01:23:45:67:89:ab 45:67:89:ab:cd:ef'
	...
```
