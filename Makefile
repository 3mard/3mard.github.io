CONTAINER_NAME:=mozakarat
DOCKER_COMPOSE=MOZAKARAT_TAG=${MOZAKARAT_TAG} docker-compose -f ./docker-compose.yml

develop:
	@ $(DOCKER_COMPOSE) up -d
	@ $(DOCKER_COMPOSE) exec $(CONTAINER_NAME) /bin/bash || true
	@ $(DOCKER_COMPOSE) stop
	@ $(DOCKER_COMPOSE) down

build:
	@ $(DOCKER_COMPOSE) build