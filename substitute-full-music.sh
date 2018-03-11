#!/bin/sh
set -e -u

if [ $PWD != '/app/extra' ]; then
	echo Something about flatpak\'s extra-data mechanism changed, rewrite this script.
	exit 255
fi
ls
c4group Music.ocg -x
for f in /app/share/games/openclonk/*.ocg; do
	if [ -z ${f##*Music.ocg} ]; then
		continue
	fi
	ln -s "$f" .
done
