# Use the official Apache image as the base image
FROM ubuntu:latest

# Install apache2 and other necessary tools
RUN apt-get update && apt-get install -y apache2

# Copy all website files into a common directory in the container
COPY ./website1 /websites/website1/
COPY ./website2 /websites/website2/
COPY ./website3 /websites/website3/

# Copy the common entry point script
COPY entrypoint.sh /usr/local/apache2/entrypoint.sh

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache using the custom entry point script
CMD ["/usr/local/apache2/entrypoint.sh"]

