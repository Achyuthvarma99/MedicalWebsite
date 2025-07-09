# Use NGINX base image
FROM nginx:alpine

# Clean existing html files
RUN rm -rf /usr/share/nginx/html/*

# Copy everything (including img, css, etc.)
COPY . /usr/share/nginx/html

EXPOSE 80
