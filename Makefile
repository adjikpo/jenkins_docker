
# Date : 28/03/21
# Source author : Cyrille Grandval
# Edited by Arthur Djikpo

CONSOLE=bin/console
DC=docker-compose
EXEC=docker exec -it jenkins 

.DEFAULT_GOAL := help

.PHONY: help ## Generate list of targets with descriptions
help:
		@grep '##' Makefile \
		| grep -v 'grep\|sed' \
		| sed 's/^\.PHONY: \(.*\) ##[\s|\S]*\(.*\)/\1:\2/' \
		| sed 's/\(^##\)//' \
		| sed 's/\(##\)/\t/' \
		| expand -t14

##
## Project setup & day to day shortcuts
##---------------------------------------------------------------------------
.PHONY: env ## Creation of volumes
env:
	$(RUN) cp docker-compose.override.yml.dist docker-compose.override.yml
	mkdir -p ./srv/data/jenkins
	mkdir -p ./srv/data/jenkins_data
	echo "The files tree  are init"

.PHONY: docker ## Install the project (Install in first place)
docker:
	$(DC) pull || true
	$(DC) build
	$(DC) up -d

.PHONY: stop ## Stop the project
stop:
	$(DC) down

.PHONY: exec ## Run bash in the jenkins container
exec:
	$(EXEC) /bin/bash