#!/bin/bash
SERVERPATH=/mount/app/build-env/webserver
cd $SERVERPATH && npm install
supervisor --watch ${SERVERPATH} ${SERVERPATH}/index.js
