#!/bin/sh -e

curl "https://github.com/protomaps/go-pmtiles/releases/download/v1.21.0/go-pmtiles_1.21.0_Linux_x86_64.tar.gz" --output "go-pmtiles_1.21.0_Linux_x86_64.tar.gz"

ls .


# pmtiles extract https://build.protomaps.com/20240618.pmtiles chattanooga.pmtiles --bbox=-85.5754812346649,34.990282262603216,-85.00603778143356,35.30248201906815
