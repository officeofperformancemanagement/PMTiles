#!/bin/sh -e

curl -L https://github.com/protomaps/go-pmtiles/releases/download/v1.21.0/go-pmtiles_1.21.0_Linux_x86_64.tar.gz | tar zx

ls -alsh .

YESTERDAY=$(date '+%Y%m%d' -d "yesterday")

./pmtiles extract https://build.protomaps.com/$YESTERDAY.pmtiles chattanooga.pmtiles --bbox=-85.5754812346649,34.990282262603216,-85.00603778143356,35.30248201906815

# cleanup
rm go-pmtiles_1.21.0_Linux_x86_64.tar.gz
rm pmtiles
