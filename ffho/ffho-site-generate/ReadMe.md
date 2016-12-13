ffho-site-generate
==================

This package generates the needed `site.json` directly on the node after firmware
upgrad has been performed. This can be used, to support different sites/regions
within one firmware image. The default `site.json` will be replaced by
`site/extra/template.conf` which is patly replacte by values defined in
`site/extra/sites.conf` and `site/extra/groups.conf`.

One can generate the `site.conf` before build with: `GLUON_SITEDIR=$PATH ./scripts/gen-site-conf.lua`

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
    subst = {
      ['%%ID'] = 1,
      ['%%CD'] = 'abn',
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
    subst = {
      ['%%V4'] = '10.132.xxx.0/21',
      ['%%V6'] = '2a03:2260:2342:2303::/64',
      ...
    },
  },
  ...
}
```

site/extra/default.conf
-----------------------

An array, containing the default configuration, to create site.conf out of template.conf before build.

### example
```
subst = {
  ['%%SN'] = 'Bitte wählen',
  ['%%SC'] = 'ffho',
  ['%%SS'] = 'paderborn.freifunk.net',
  ...
}
```
