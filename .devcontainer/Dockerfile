FROM ubuntu:24.04

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive apt-get install -y \
   sudo \
   curl \
   git && \
   rm -rf /var/lib/apt/lists/*

RUN curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz && rm -rf /opt/nvim && sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz 
ENV PATH="$PATH:/opt/nvim-linux-x86_64/bin"

RUN curl -fsSL https://pixi.sh/install.sh | sh
ENV PATH="$PATH:/root/.pixi/bin"

# Change permissions to allow for Apptainer/Singularity containers
RUN chmod -R a+rwX /root

