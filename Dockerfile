
# Use official NGINX image
FROM nginx:alpine

# Remove default website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files to Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
