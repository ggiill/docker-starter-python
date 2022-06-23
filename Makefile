# ↓↓↓ change this ↓↓↓
app_name = python-example

.PHONY: build
build:
	docker build -t $(app_name) .

.PHONY: shell
shell:
	docker run \
		--interactive \
		--tty \
		--volume ${PWD}:/opt/app \
		$(app_name) /bin/bash

.PHONY: run
run:
	docker run \
		--interactive \
		--tty \
		--volume ${PWD}:/opt/app \
		$(app_name)
