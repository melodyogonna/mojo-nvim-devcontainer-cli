app: launch

setup: sdk devcontainer

sdk:
	docker build . -t max-sdk

devcontainer:
	devcontainer up --workspace-folder .

launch:
	devcontainer exec --workspace-folder . magic run nvim .

shell:
	devcontainer exec --workspace-folder . magic shell
