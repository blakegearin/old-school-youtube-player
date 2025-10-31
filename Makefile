version:
	bash helpers/update-version.sh "$(v)"

userscript:
	bash helpers/create-userscript.sh

release:
	$(eval NEW_VERSION := $(shell make version v="$(v)" | tail -n 1))
	make userscript
	bash helpers/release.sh "$(NEW_VERSION)"
