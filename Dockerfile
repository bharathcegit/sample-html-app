# Use the official NGINX image as the base
FROM nginx:latest

# Copy the NGINX configuration file to the container
COPY myconfig.conf /etc/nginx/conf.d/default.conf

# Copy your HTML file and other static assets to the container
COPY index.html /var/www/html/index.html

# Expose port 8001 to allow incoming traffic
EXPOSE 8001

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
