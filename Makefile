RED=\033[0;31m
GREEN=\033[0;32m
NC=\033[0m

_%: # used to print a job's title
	@printf "\n${GREEN}- Running '$*'${NC}\n"

deps: _deps
	@echo "install some dependenices"
	@echo "it also can include travis-specific commands"
	@echo "(like apt-get install smth)"

build: _build
	@echo "build binaries if needed"

test: _test
	@echo "run some tests"

image: _image
	@echo "build a docker image"

push: _push
	@echo "push image to quay"

deploy: _deploy
	@echo "trigger jenkins job for deployment"

travis: deps build test image push deploy
