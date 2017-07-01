# lamp
LAMP Server on Ubuntu 16.04 with PHP-7.0, Apache2, MySQL-5.7 and phpMyAdmin

#Usage

1. Install docker

2. Download and start the LAMP server instance:
   
      docker run -d -p 80:80 -p 2222:22 -p 3306:3306 --name lamp adnan80/lamp

3. Test the LAMP server by pointing your browser to:

      http://localhost/ OR http://localhost/phpmyadmin 

and you should see the default apache index. Follow the info.php link there and you should see detials of the php installation.

4. [Optional] Change your webserver root data storage location:
It's likely desirable for your Apache www-root directory and MySQL data directory to be placed in a persistent storage location outside the docker container on the host's file system. For example. Let's imagine you wish to store your www files in a directory ~/www and mysql data in directory ~/mysql on the host's file system. Then start the docker container with below command:

      docker run -d -p 80:80 -p 2222:22 -p 3306:3306 \
      -v ~/www:/var/www/html -v ~/mysql:/var/lib/mysql \
      --name lamp adnan80/lamp

5. [Optional] Stop the lamp docker container instance:
      docker stop lamp

6. [Optional] Delete the lamp docker container instance (after stopping it)
      docker rm lamp
