FROM fabric8/java-jboss-openjdk8-jdk:1.2.3

ENV JAVA_APP_JAR hola-swarm.jar
ENV AB_ENABLED off
ENV JAVA_OPTIONS -Xmx512m
ENV ZIPKIN_SERVER_URL http://zipkin
ENV JAEGER_SERVER_URL jaeger-all-in-one
ENV TRACING_SYSTEM none

ENV KEYCLOAK_FILE /deployments/keycloak.json

EXPOSE 8080

ADD keycloak.json /deployments/
ADD target/hola-swarm.jar /deployments/
