DC := docker exec
NODE := $(DC) nuxt-app yarn

setup: start install build

start:
	@docker compose up -d

stop:
	@docker compose down

build:
	@$(NODE) build

install:
	@$(NODE) install

dev:
	@$(NODE) dev

preview:
	@$(NODE) preview

ssh:
	@$(DC) -it nuxt-app bash