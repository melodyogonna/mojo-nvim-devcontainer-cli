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

This will install/configure Neovim and Pixi in a devcontainer container.

```
make
```

To launch a bash shell in the container. You should confirm that Neovim and Pixi works. You can then setup your project inside the container: see [Modular Quickstart](https://docs.modular.com/max/get-started/)
