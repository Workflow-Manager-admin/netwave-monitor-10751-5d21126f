#!/bin/bash
cd /home/kavia/workspace/code-generation/netwave-monitor-10751-5d21126f/device_search_portal_frontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

