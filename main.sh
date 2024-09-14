#!/bin/sh -e

curl --output "go-pmtiles_1.21.0_Linux_x86_64.tar.gz" "https://github.com/protomaps/go-pmtiles/releases/download/v1.21.0/go-pmtiles_1.21.0_Linux_x86_64.tar.gz"

ls -alsh .

tar -xvzf ./go-pmtiles_1.21.0_Linux_x86_64.tar.gz

ls -alsh .

# pmtiles extract https://build.protomaps.com/20240618.pmtiles chattanooga.pmtiles --bbox=-85.5754812346649,34.990282262603216,-85.00603778143356,35.30248201906815
