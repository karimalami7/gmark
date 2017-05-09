#!/bin/bash

folder="../output/trip/"

cd ../src
./test -c ../use-cases/trip.xml -g "$folder"trip-graph.txt -r "$folder" -a