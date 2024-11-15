# Use the official Apache HTTP server image as a base image
FROM httpd:latest

# Copy the custom index.html to the Apache server's document root
RUN echo "hello from nigga" > /usr/local/apache2/htdocs/index.html

# Expose port 80 to allow HTTP traffic
EXPOSE 80

# The default command to run Apache in the foreground
CMD ["httpd-foreground"]
