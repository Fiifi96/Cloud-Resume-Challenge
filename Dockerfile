# Set nginx base image
FROM nginx

# Remove the default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Replace with our own default nginx configuration
COPY default.conf /etc/nginx/conf.d/

# Copy static website files to the nginx container
COPY landing1.html /usr/share/nginx/html/

# Copy image files to the nginx container
COPY aa1e8123-fde6-43d6-b4a7-619852c50968.jpg /usr/share/nginx/html/

# Copy resume HTML files to the nginx container
COPY resume2.html /usr/share/nginx/html/

# Copy projects.html files to the nginx container
COPY side_project.html /usr/share/nginx/html/

# Copy web dependencies files to the nginx container
COPY assets/ /usr/share/nginx/html/
