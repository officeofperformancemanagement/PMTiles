#!/bin/sh -e

## get real time data via Overpass API
curl --output chattanooga.xml "https://overpass-api.de/api/interpreter?data=%2F%2F%5Bout%3Acsv%28%27name%27%2C%3A%3Alat%2C%3A%3Alon%2C%27cuisine%27%3Btrue%3B%27%2C%27%29%5D%3B%0A%0Aarea%0A%20%20%5B%22wikidata%22%3D%22Q186702%22%5D%0A%20%20%5B%22name%22%3D%22Chattanooga%22%5D-%3E.a%3B%0A%0Anwr%28area.a%29%3B%0A%0A%2F%2F%20calculate%20centroid%20of%20ways%20and%20relations%0Aout%20body%20center%3B"

# download and extract only pmtiles file
curl -L https://github.com/protomaps/go-pmtiles/releases/download/v1.21.0/go-pmtiles_1.21.0_Linux_x86_64.tar.gz | tar zx pmtiles

ls -alsh .

YESTERDAY=$(date '+%Y%m%d' -d "yesterday")

./pmtiles extract https://build.protomaps.com/$YESTERDAY.pmtiles chattanooga.pmtiles --bbox=-85.5754812346649,34.990282262603216,-85.00603778143356,35.30248201906815

# cleanup
rm go-pmtiles_1.21.0_Linux_x86_64.tar.gz
rm pmtiles

