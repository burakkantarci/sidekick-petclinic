export THUNDRA_APIKEY=9dec4bb5-80a3-4d5e-be18-3213ce09a03c
export THUNDRA_AGENT_APPLICATION_NAME=pet-clinic
export THUNDRA_AGENT_APPLICATION_STAGE=dev
export THUNDRA_AGENT_APPLICATION_VERSION=2.0.1-SNAPSHOT
java -javaagent:./thundra-agent.jar -jar target/*.jar
