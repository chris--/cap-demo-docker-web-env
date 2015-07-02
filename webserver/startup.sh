#!/bin/bash

# get current path of this script
SERVERPATH=$(dirname $(readlink -f $0))

# build modules for webserver
cd $SERVERPATH && rm -rf node_modules && npm install

# start webserver and watch for file changes
supervisor --watch ${SERVERPATH} ${SERVERPATH}/index.js
