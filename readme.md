# Mojo/Nvim Devcontainer

This is an effort to work with Mojo in a devcontainer without Vs Code leveraging [https://containers.dev](Devcontainer CLI), this particular set up is geared towards
usage with Neovim, you can customize it to fit your own needs.

The major reason Dev Container is really needed here is because it proves a nice interface to mount local neovim configuration and state into the container - See .devcontainer/devcontainer.json.

# Dependencies

- Devcontainer cli
- Docker

# Getting started.

The Dockerfile in root folder Neovim and Modular. This needs to be built once and the image referenced inside .devcontainer/Dockerfile.

```sh
docker build . -t modular-sdk
```

In my local machine I moved this Dockerfile to a new ~/modular directory, I recommend you do the same.

You can start devcontainer:

```sh
devcontainer up --workspace-folder .
```

or (on Mac or Linux)

```sh
make devcontainer
```

Run mojo:

```sh
devcontainer exec --workspace-folder . mojo
```

to start Neovim inside the container and open it simply do:

```sh
make launch
```

## I don't have Neovim and I don't care about mounting local filesystem

Then you probably don't need devcontainer. Remove every Neovim setup command in Dockerfile. You can then build directly build and run .devcontainer/Dockerfile (after you've built the sdk dockerfile of course.)

```sh
cd .devcontainer
docker build . -t mojo-standalone
docker run -it mojo-standalone mojo
```