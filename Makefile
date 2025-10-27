version:
	@if [ -z "$(v)" ]; then echo "Usage: make version v=<version>"; exit 1; fi
	bash helpers/update-version.sh "$(v)"

userscript:
	bash helpers/create-userscript.sh

release:
	@if [ -z "$(v)" ]; then echo "Usage: make release v=<version>"; exit 1; fi
	make version v="$(v)"
	make userscript
	bash helpers/release.sh "$(v)"
