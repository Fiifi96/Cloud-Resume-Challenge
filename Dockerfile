# Set nginx base image
FROM nginx

# Remove the default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Replace with our own default nginx configuration
COPY default.conf /etc/nginx/conf.d/

# Copy web dependencies files to the nginx container
COPY . /usr/share/nginx/html/
