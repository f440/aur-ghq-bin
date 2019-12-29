.PHONY: image-update
image-update:
	docker pull archlinux:latest

.PHONY: build
build:
	uid=${shell id -u} docker-compose up

.PHONY: clean
clean:
	uid=${shell id -u} docker-compose down
	$(RM) -r \
		ghq-bin-*.pkg.tar.xz \
		ghq-*_linux_amd64.zip \
		pkg \
		src
