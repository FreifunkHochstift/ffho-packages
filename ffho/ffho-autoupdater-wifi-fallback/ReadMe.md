ffho-autoupdater-wifi-fallback
==============================

If a node has no connection to the mesh, neither via wlan-mesh nor via
mesh-vpn, it ist not possible to update this node via ``autoupdater``. There for
the *wifi-fallback* was developed, to check whether the node is part of a fully
working mesh or not. Else the node connects to a visible "Freifunknetz" and
tries downloads an update as wlan-client via executing ``autoupdater -f``.
