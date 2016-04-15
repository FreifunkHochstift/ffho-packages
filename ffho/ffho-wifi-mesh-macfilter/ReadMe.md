ffho-wifi-mesh-macfilter
========================

Setting plink_action [block|open], when 802.11s mesh-interface comes up. Define
filterpolicy in uci wireless.<wifi-iface>.macfilter=[disable|deny|allow]. Deny
sets ``iw dev <device> station set <mac> plink_action block`` and allow sets
``iw dev <device> mesh_param mesh_auto_open_plink=0`` and ``iw dev <device>
station set <mac> plink_action open``. List MAC addresses (divided by spaces) in
``wireless.<wifi-iface>.maclist``.
