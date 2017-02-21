wget http://download.geofabrik.de/europe/belgium-latest.osm.pbf -N
osmosis \
  --read-pbf-fast belgium-latest.osm.pbf \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-pbf halle.pbf compress=none
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=motorway,motorway_link,trunk,trunk_link \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml snelweg.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=primary,primary_link,secondary,secondary_link \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml hoofdweg.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=tertiary,tertiary_link,unclassified,residential,living_street,service \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml lokale_weg.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways highway=pedestrian,track,footway,bridleway,cycleway,steps,path \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml pad.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter accept-relations name=Canal%sCharleroi-Bruxelles,Senne \
  --used-way \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml waterweg.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways railway=rail \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml spoorweg.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter accept-relations network=rcn \
  --used-way \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml fietsknooppunt.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways landuse=forest,cemetery leisure=park natural=wood \
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml park.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways landuse=meadow,grass landcover=grass natural=grassland\
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml gras.osm
osmosis \
  --rbf halle.pbf \
  --tag-filter reject-relations \
  --tag-filter accept-ways natural=water\
  --used-node \
  --bounding-box left=4.195542 bottom=50.69780 right=4.268620 top=50.76322 completeWays=yes \
  --write-xml water.osm
