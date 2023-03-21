FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/nginx.conf

# Copy the custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Create a new user and group
RUN groupadd -g 1000 dockeruser && \
    useradd -u 1000 -g 1000 -ms /bin/bash dockeruser && \
    usermod -aG docker dockeruser

# Set the owner of the copied files to the new user
RUN chown -R dockeruser:dockeruser /ssl/api.bergandersen.com
RUN chown -R dockeruser:dockeruser /ssl/bergandersen.com

# Set the default user
USER dockeruser

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80 443 3306
