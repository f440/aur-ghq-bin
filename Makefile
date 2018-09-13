.PHONY: build
build:
	uid=${shell id -u} docker-compose up
