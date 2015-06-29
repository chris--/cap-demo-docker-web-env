#!/bin/bash
SERVERPATH=/mount/app/build-env/webserver
cd $SERVERPATH && rm -rf node_modules && npm install
supervisor --watch ${SERVERPATH} ${SERVERPATH}/index.js
