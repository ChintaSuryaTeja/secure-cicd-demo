# Use the latest lightweight and secure Nginx image
FROM nginx:1.27-alpine

# Remove default nginx index and copy your app files
RUN rm -rf /usr/share/nginx/html/*

# Copy static site content into nginx html directory
COPY . /usr/share/nginx/html

# Set permissions for security
RUN chmod -R 755 /usr/share/nginx/html

# Expose the default HTTP port
EXPOSE 80

# Start nginx server in foreground
CMD ["nginx", "-g", "daemon off;"]
