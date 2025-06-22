# Use NGINX base image
FROM nginx:alpine

# Remove default nginx html folder
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into nginx’s default directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# NGINX already runs as entrypoint, no need to define CMD
