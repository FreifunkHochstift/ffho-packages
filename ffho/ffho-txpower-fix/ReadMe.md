ffho-txpower-fix
================

With chaoscalmer, wifi nodes seemed to be locked to less txpower than they could
do. First suggestions are, that this is a mistake in the upstream OpenWrt-Code.
Even the bugtrackers of OpenWrt are full of this.

The idea of this workaround is, to check if the txpower could be increased if
it isn't already set to a special value. Unfortunately this can only be done by
changing the country code.
