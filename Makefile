include travis.mk

deps:
	@echo "install some dependenices"
	@echo "it also can include travis-specific commands"
	@echo "(like apt-get install smth)"

build:
	@echo "build binaries if needed"

test:
	@echo "run some tests"

image:
	@echo "build a docker image"

push:
	@echo "push image to quay"

deploy:
	@echo "trigger jenkins job for deployment"

ci: \
	ci_deps \
	ci_build \
	ci_test \
	\
	ci_if_master_image \
	ci_if_master_push \
	ci_if_master_deploy


