# Configure Tomcat for SSL and HTTP/2 and put it into a Docker Container

# Steps
* Install [Docker](https://docs.docker.com/install/).
* Clone this repository - $git clone https://github.com/mikejlong60/docker-tomcat-tutorial.git
* cd 'docker-tomcat-tutorial'
* $docker build -t tomcat-w-ssl-h2 .
* $docker run -p 80:8080 -p 8445:8443 tomcat-w-ssl-h2
* https://localhost:8445/config
* http://localhost

You should see that all the webapps are using HTTP/2 Protocol in Chrome and Firefox.
In Chrome Developer Tools add the Protocol column to the Network view and refresh.  The
Protocol column is not there by default. It will say H2 for Tomcat running over HTTPS
and H1.1 for Tomcat running over HTTP.

Firefox shows  HTTP/2 in the version column of Network tab when accessed over HTTPS
and HTTP/1.1 when accessed over plain HTTP.

