// export THUNDRA_APIKEY=9dec4bb5-80a3-4d5e-be18-3213ce09a03c
//export THUNDRA_APIKEY=7d389f20-907f-4827-a616-d25c8ab1fe7e
export THUNDRA_APIKEY=a4a30098-1112-478b-a131-87bf9b711e81
export THUNDRA_AGENT_APPLICATION_NAME=pet-clinic-brk
export THUNDRA_AGENT_APPLICATION_STAGE=dev
export THUNDRA_AGENT_APPLICATION_VERSION=1.0.1-SNAPSHOT
java -javaagent:./thundra-agent.jar -jar target/*.jar
