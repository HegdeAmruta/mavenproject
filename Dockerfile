FROM ubuntu:latest
#
# Identify the maintainer of an image
LABEL maintainer="hegdeamruta1999@gmail.com"
#
# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y
#
# Install NGINX to test.
RUN apt-get install nginx -y
#
# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]