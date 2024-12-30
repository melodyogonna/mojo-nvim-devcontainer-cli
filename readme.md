# Mojo/Nvim Devcontainer

This is an effort to work with Mojo in a devcontainer without Vs Code leveraging [ Devcontainer CLI ](https://containers.dev), this particular set up is geared towards
usage with Neovim, you can customize it to fit your own needs.

The major reason Dev Container is really needed here is because it proves a nice interface to mount local neovim configuration and state into the container - See .devcontainer/devcontainer.json.

# Dependencies

- Devcontainer cli
- Docker

# Getting started.

You can either get started by using this repository as a template, cloning it, or just copying the files you want.
For simplicity I'll assume you've cloned to repository. In this case, getting started is pretty easy:

```sh
make setup
```

To configure Max SDK in docker and initialize devcontainer

```
make
```

To launch a Neovim instance inside the devcontainer workspace.

## Details

The Dockerfile in root folder sets up Neovim and Magic. This needs to be built once and the image referenced inside `.devcontainer/Dockerfile`. The idea is that all subsequent projects would use the built image as a base
layer so we wouldn't need to go through the entire setup every time we want to start a new project.

```sh
make sdk
```

Or

```sh
docker build . -t max-sdk
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
devcontainer exec --workspace-folder . magic run mojo
```

to start Neovim inside the container and open it simply do:

```sh
make launch
```

alias

```sh
make
```

## I don't have Neovim and I don't care about mounting local filesystem

Then you probably don't need devcontainer. Remove every Neovim setup command in Dockerfile. You can then build directly build and run .devcontainer/Dockerfile (after you've built the sdk dockerfile of course.)

```sh
cd .devcontainer
docker build . -t mojo-standalone
docker run -it mojo-standalone magic shell
```

Devcontainer makes using this thing for a serious project a better experience, I recommend you keep it.
