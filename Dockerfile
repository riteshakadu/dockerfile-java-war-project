FROM ubuntu

RUN apt update && apt install perl -y && apt install maven -y && apt install git curl -y && mkdir java-demo

WORKDIR java-demo

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.tar.gz
RUN tar xvfz apache-tomcat-10.1.13.tar.gz
RUN mv apache-tomcat-10.1.13/* /opt/tomcat/.

COPY target/*.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
