# Docker - simple Dockerfile example

Simple Dockerfile to setup development environment very quickly.

# How to setup

1 - In terminal, move into your PHP projects directory.

2 - Copy Dockerfile into directory.

3 - Run command in terminal: 'docker build -t webserver .'

4 - If 'webserver' image has been built succesfully, run another command in terminal: 'docker run -ti --name Webserver -p 3306:3306 -p 80:80 -e MYSQL_ROOT_PASSWORD=password -v $(pwd):/var/www/html webserver /bin/bash'

5 - That's all. Now you can modify your PHP projects and preview changes on your host machine browser by typing URL 'http://localhost:80'. You can also connect to the MySql database with provided password in docker run command.

Explanation:

--name Webserver - this flag will set 'Webserver' as container name

-p - wil match container port with host port

-e - allows to set environment variable

-v - will create volume that you can share with container, for example you can share your PHP projects directory from host machine witch /var/www/html directory in your container.

The last two parameters are: image name and process name to run in container
