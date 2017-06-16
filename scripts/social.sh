#!/bin/bash

folder="../output/social/"


../src/test -c ../use-cases/social.xml -g "$folder"social-graph.txt -r "$folder" -a