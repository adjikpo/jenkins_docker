
# Date : 28/03/21
# Source author : Cyrille Grandval
# Edited by Arthur Djikpo

CONSOLE=bin/console
DC=docker-compose
HAS_DOCKER:=$(shell command -v $(DC) 2> /dev/null)

ifdef HAS_DOCKER
	ifdef JENKINS_ENV
		EXECROOT=$(DC) exec -Te JENKINS_ENV=$(JENKINS_ENV) jenkins
		EXEC=$(DC) exec -Te JENKINS_ENV=$(JENKINS_ENV) jenkins
	else
		EXECROOT=$(DC) exec -T jenkins
		EXEC=$(DC) exec -T jenkins
	endif
else
	EXECROOT=
	EXEC=
endif

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

