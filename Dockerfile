FROM tomee
COPY webapp/target/webapp.war /usr/local/tomee/webapps
EXPOSE 8080
