# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy HTML, CSS, and image files to the Nginx default HTML directory
COPY ./html /usr/share/nginx/html

# Copy the script to inject the pod and node names into the HTML
COPY pod-name.sh /usr/local/bin/pod-name.sh

# Ensure the script is executable
RUN chmod +x /usr/local/bin/pod-name.sh

# Set the script as the entrypoint to dynamically update HTML with pod and node names
ENTRYPOINT ["/usr/local/bin/pod-name.sh"]

# Expose the default HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]