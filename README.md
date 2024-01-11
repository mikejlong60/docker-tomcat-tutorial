# Configure Tomcat for SSL and HTTP/2 and put it into a Docker Container

# Steps
* Install [Docker](https://docs.docker.com/install/).
* Clone this repository - $git clone https://github.com/mikejlong60/docker-tomcat-tutorial.git
* cd 'docker-tomcat-tutorial'
* $docker build -t mywebapp .
* $docker run -p 80:8080 -p 8445:8443 mywebapp
* https://localhost:8445/config

You should see that all the webapps are using HTTP/2 Protocol in Chrome and Firefox.  And you
should see that the default web app in non-HTTP mode is running in HTTP/1.1 Protocol in Firefox.