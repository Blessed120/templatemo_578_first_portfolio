
# Use the official Nginx image
FROM nginx:alpine

# Copy your static website files to the Nginx HTML folder
WORKDIR /usr/share/nginx/html

COPY . . 

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
