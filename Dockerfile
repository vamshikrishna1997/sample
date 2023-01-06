FROM tomee
COPY webapp/target/webapp.war /usr/local/tomee/webapps
EXPOSE 8080
RUN 'sh /usr/local/tomee/bin/startup.sh'

