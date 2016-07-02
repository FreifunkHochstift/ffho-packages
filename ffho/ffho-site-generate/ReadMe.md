ffho-site-generate
==================

This package generates the needed `site.json` directly on the node after firmware
upgrad has been performed. This can be used, to support different sites/regions
within one firmware image. The default `site.json` is partially overridden by the
variables defined in `site/extra/sites.conf` and `site/extra/groups.conf`.

This does not belong to the `site.mk`.

/etc/config/currentsite
-----------------------

**currentsite.current.name:**
- Site, the node belogs to

### example
```
config site 'current'
	option name 'ffho_abn'
```

site/extra/sites.conf
---------------------

Array of possible sites, containing site specific configuration different to the
original site.conf and group specific config. Same configuration as in the site.conf
can be done here.

**site_select.group: optional**
- specify a group out of `site/extra/groups.conf` the site belongs to

### example
```
{
  {
    site_name = 'Freifunk Hochstift - Altenbeken',
    site_code = 'ffho_abn',
    wifi24 = {
      ap = {
        ssid = 'hochstift.freifunk.net/altenbkn',
      },
    },
    wifi5 = {
      ap = {
        ssid = 'hochstift.freifunk.net/altenbkn',
      },
    },
    site_select = {
      group = 'ffho_ost',
    },
  },
  ...
}
```

site/extra/groups.conf
----------------------

Array of groups, containing group specific configuration different to the original
site.conf. Same configuration as in the site.conf can be done here.

### example
```
{
  ffho_ost = {
    prefix4 = '10.132.xxx.0/21',
    prefix6 = '2a03:2260:2342:2303::/64',
    wifi24 = {
      ibss = {
        ssid = 'ffho-mesh-ost',
        bssid = '02:ff:03:ff:00:24',
      },
    },
    wifi5 = {
      ibss = {
        ssid = 'ffho-mesh-ost',
        bssid = '02:ff:03:ff:00:05',
      },
    },
    next_node = {
      ip4 = '10.132.xxx.1',
      ip6 = '2a03:2260:2342:2303::1',
      mac = '02:ff:03:ff:00:00',
    },
    fastd_mesh_vpn = {
      groups = {
        backbone = {
          peers = {
            gw01 = {
              key = 'GW01_KEY',
              remotes = {
                '"gw01.ffho.net" port 10003',
                ...
              },
            },
            ...
          },
        },
      },
    },
  },
  ...
}
```

