#!/bin/bash
cd /home/container

# Output Current node Version
node -v

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}

# STARTUP="cd /home/container/ && node i && node {{startupfile}} {{SERVER_PORT}}"
# startupfile="main.js"