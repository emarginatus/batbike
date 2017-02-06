wget http://download.geofabrik.de/europe/belgium-latest.osm.pbf
osmosis \
  --read-pbf-fast belgium-latest.osm.pbf \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-pbf osm/halle.pbf compress=none
osmosis \
  --rbf osm/halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=motorway,motorway_link,trunk,trunk_link \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml osm/snelweg.osm
osmosis \
  --rbf osm/halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=primary,primary_link,secondary,secondary_link \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml osm/hoofdweg.osm
osmosis \
  --rbf osm/halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=tertiary,tertiary_link,unclassified,residential,living_street \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml osm/lokale_weg.osm
osmosis \
  --rbf osm/halle.pbf \
  --tag-filter accept-relations name=Canal%sCharleroi-Bruxelles,Senne \
  --used-way \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml osm/waterweg.osm
osmosis \
  --rbf osm/halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways railway=rail \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml osm/spoorweg.osm
osmosis \
  --rbf osm/halle.pbf \
  --tag-filter accept-relations network=rcn \
  --used-way \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml osm/fietsknooppunt.osm
