FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/nginx.conf

# Copy the custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port to allow incoming HTTP traffic
EXPOSE 80 443
