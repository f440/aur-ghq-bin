.PHONY: build
build:
	uid=${shell id -u} docker-compose up

.PHONY: clean
clean:
	uid=${shell id -u} docker-compose down
	$(RM) -r src pkg
