#!/bin/sh
# Dynamically replace placeholders in the HTML with Pod and Node details

# Retrieve the pod name from the hostname, defaulting to "Unknown Pod Name"
POD_NAME=$(hostname || echo "Unknown Pod Name")

# Retrieve the node name from the environment variable, defaulting to "Unknown Node Name"
NODE_NAME=${NODE_NAME:-"Unknown Node Name"}

# Replace placeholders {{POD_NAME}} and {{NODE_NAME}} in the HTML file
sed -i "s/{{POD_NAME}}/${POD_NAME}/g" /usr/share/nginx/html/index.html
sed -i "s/{{NODE_NAME}}/${NODE_NAME}/g" /usr/share/nginx/html/index.html

# Start Nginx in the foreground
exec nginx -g 'daemon off;'
