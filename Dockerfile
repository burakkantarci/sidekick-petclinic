FROM openjdk:8
RUN mkdir -p /app

# Copy app artifact
ADD target/*.jar /app/app.jar

# Copy Thundra bootstrap agent artifact.
# Please rename with the file you have downloaded at the first step.
ADD sidekick-agent-bootstrap.jar /app/sidekick-agent-bootstrap.jar

ENV SIDEKICK_APIKEY=54bc7326-eb63-4489-ae15-73c5fed6a069
# ENV SIDEKICK_AGENT_BROKER_HOST=wss://broker.service.runsidekick.me
ENV SIDEKICK_AGENT_APPLICATION_NAME=sidekick-demo-petclinic-java
ENV SIDEKICK_AGENT_APPLICATION_TAG_SIDEKICK_DEBUGGER_ONBOARDING=true
ENV SIDEKICK_AGENT_APPLICATION_VERSION=1.0.0
ENV SIDEKICK_AGENT_APPLICATION_STAGE=onboarding

WORKDIR /app
EXPOSE 8080
ENTRYPOINT [ "java", "-javaagent:sidekick-agent-bootstrap.jar", "-jar", "app.jar" ]
