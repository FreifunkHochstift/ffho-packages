ffho-status-page
================

This is a customized version of the *old* `gluon-status-page`.

A link to a (geographical) map can be specified within the `site.conf` and it
will be shown together with the koordinates. To identify the node, its nodeid
will be added at the end.

site.conf
---------

**status_page.location_link: optional**
- Link to a (geographical) map

### example
```lua
{
  status_page = {
    location_link = 'https://map.hochstift.freifunk.net/#!v:m;n:',
  },
  ...
},
```
