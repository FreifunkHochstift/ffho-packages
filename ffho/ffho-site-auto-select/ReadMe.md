ffho-site-auto-select
=====================

Autoselect correct site-code by geocoordinates during upgrade and by ``gluon-neighbour-info`` hourly.
One can specify a default site within site.conf, if the coordinates do not match to any site defined within extra/geo.json.

site.conf
---------

site_select.geo_default_site : optional
    - ``'ffho_uml'``

extra/geo.json
--------------

File with geojson format. The corresponding site_code has to be defined within ``properties`` section as ``"site_code": "ffho_abn"``.
