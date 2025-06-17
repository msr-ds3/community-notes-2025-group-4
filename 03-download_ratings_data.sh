#!/bin/bash

# use curl download 20 rating data for the community notes, it will not redownload again if it already
for i in $(seq -w 0 19); do
  curl -O -z  ratings-000${i}.zip https://ton.twimg.com/birdwatch-public-data/2025/06/16/noteRatings/ratings-000${i}.zip
done
