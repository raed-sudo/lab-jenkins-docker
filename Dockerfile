FROM docker.io/library/tomcat
WORKDIR /usr/local/tomcat/
COPY dist/lab-jenkins.war webapps/

