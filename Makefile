.DEFAULT_GOAL := test

.PHONY: test
test:
	./devops/test.sh

.PHONY: build
build: test
	docker commit jessie quay.io/freedomofpress/ci-elastalert:latest

.PHONY: teardown
teardown:
	docker kill elasticsearch jessie && docker rm -f elasticsearch jessie
