_RED=\033[0;31m
_GREEN=\033[0;32m
_YELLOW=\033[0;33m
_NC=\033[0m

_TRAVIS_IS_MASTER=$(shell test "$(TRAVIS_BRANCH)" = "master" -a "$(TRAVIS_EVENT_TYPE)" = "push" && echo true)

ci_if_master_%:
ifeq ($(_TRAVIS_IS_MASTER),true)
	@$(MAKE) --no-print-directory ci_$*
else
	@printf "\n${_YELLOW}- Skipping '$*' [if_master]${_NC}\n"
endif

ci_%:
	@printf "\n${_GREEN}- Running '$*'${_NC}\n"
	@$(MAKE) --no-print-directory $*
