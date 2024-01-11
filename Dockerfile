FROM tomcat:9.0.84-jdk21-corretto
LABEL maintainer="michael.long@greymatter.io"

RUN mkdir /usr/local/tomcat/certs
COPY certs/*.pem /usr/local/tomcat/certs
COPY server.xml /usr/local/tomcat/conf/server.xml

COPY webapps/* /usr/local/tomcat/webapps

EXPOSE 8080 8445
CMD ["catalina.sh", "run"]
