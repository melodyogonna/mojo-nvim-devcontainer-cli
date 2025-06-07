app: shell

setup: devcontainer

devcontainer:
	devcontainer up --workspace-folder .

shell: devcontainer
	devcontainer exec --workspace-folder . bash
