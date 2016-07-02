ffho-site-auto-select
=====================

This Package tries to autoselect the correct site-code of gluon nodes.

If geocoordinates are set it matchs them to the areas provided by geo.json file.
If there is no match, the *geo-default-site*, specified in site.conf, is selected.
If no coordinates are set, it tries to discover the site-code via
`gluon-neighbour-info` hourly.

site.conf
---------

**site_select.geo_default_site: optional**
- default site_code if geolocation is set but does not match to defined areas.

### example
```lua
{
  site_select = {
    default_site = 'ffho_uml',
  },
  ...
},
```

site/extra/geo.json
-------------------

File with geojson format. The corresponding `site_code` has to be defined within
`"properties"` section as `"site_code": "ffho_abn"`.

### example
```json
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
            [
              8.8845,
              51.69
            ],
            [
              8.8765,
              51.6925
            ],
            [
              8.8815,
              51.7105
            ],
            ...
          ]
        ]
      },
      "properties": {
        "site_code": "ffho_abn"
      }
    },
    ...
  ]
}
```
