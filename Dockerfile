# Use the official Ubuntu base image
FROM ubuntu:latest



# Update package list and install necessary packages
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /var/www/html
COPY . . 


# Expose port 80 to the outside world
EXPOSE 80

# Start Apache service
CMD ["apachectl", "-D", "FOREGROUND"]
