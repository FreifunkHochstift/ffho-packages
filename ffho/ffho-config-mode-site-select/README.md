ffho-config-mode-site-select
======================

This Repository contains a Gluon package to choose between different sites after flashing the image. <br>
This does not apply to the site.mk!

This is a modified Version of gluon-config-mode-site-select

Usage
-----
Create a file called sites.conf in $gluondir/site/extra/.
This file should include a lua-table with the following informations about the different sites
* site_name
* site_code
* ssid

<br>
Das ganze sieht dann so aus: <br>
![](http://labor19.net/Hendrik/preview1.png)
