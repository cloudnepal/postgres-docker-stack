#! /bin/bash
if [ "$1" == "" ]; then
    for d in ./*; do
	  if [ -d "$d" ]; then
	    docker-compose -f "$d"/docker-compose.yml up -d
	  fi
	done
fi

if [ "$1" != "" ]; then
    for d in ./*; do
	  if [ -d "$d" ]; then
	    docker-compose -f "$d"/docker-compose.yml "$1"
	  fi
	done
fi