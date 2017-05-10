#!/bin/bash

folder="../output/trip/"


../src/test -c ../use-cases/trip.xml -g "$folder"trip-graph.txt -r "$folder" -a