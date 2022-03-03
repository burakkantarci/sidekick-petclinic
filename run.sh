docker build -t sidekick/petclinic-demo .
docker-compose up -d
docker run -e SIDEKICK_APIKEY=54bc7326-eb63-4489-ae15-73c5fed6a069 -p 8081:8081 sidekick/petclinic-demo:latest
