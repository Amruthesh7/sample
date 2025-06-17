# Use Nginx base image
FROM nginx:alpine

# Copy sample.html from context to Nginx default path
COPY sample.html /usr/share/nginx/html/index.html
