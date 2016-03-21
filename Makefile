DEFAULT_GOAL := build

build:
	@docker build --tag neochrome/daws:latest .

update:
	@docker pull neochrome/daws:latest

install:
	@echo Installing to /usr/bin
	@install -Dm755 daws.sh /usr/bin/daws

clean:
	@docker rmi --force neochrome/daws
