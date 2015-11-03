#!/bin/sh

current_site="$(cat "$GLUON_SITEDIR"/site.conf | grep "site_code" | sed "s/site_code =//; s/,//")"

echo "config site 'current'" >> "$DIR"/etc/config/currentsite
echo "    option name"$current_site"" >> "$DIR"/etc/config/currentsite
echo "" >> "$DIR"/etc/config/currentsite
