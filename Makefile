app: docker-build

docker-build:
	docker build . -t mojo

devcontainer:
	devcontainer up --workspace-folder .

launch:
	devcontainer exec --workspace-folder . nvim .

