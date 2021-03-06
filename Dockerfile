# Container image that runs your code
FROM wyveo/nginx-php-fpm:php73

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Copies your code file from your action repository to the filesystem path of nginx
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
