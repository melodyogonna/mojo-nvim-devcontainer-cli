FROM ubuntu:24.04

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive apt-get install -y \
   sudo \
   curl \
   git && \
   rm -rf /var/lib/apt/lists/*

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz && rm -rf /opt/nvim && sudo tar -C /opt -xzf nvim-linux64.tar.gz 
ENV PATH="$PATH:/opt/nvim-linux64/bin"

RUN curl -ssL https://magic.modular.com/564e6568-bb5b-438e-bfc3-13d858d065ab | bash
ENV PATH="$PATH:/root/.modular/bin"

# Change permissions to allow for Apptainer/Singularity containers
RUN chmod -R a+rwX /root

