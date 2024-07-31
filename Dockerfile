FROM ubuntu:20.04

ARG DEFAULT_TZ=America/Los_Angeles
ENV DEFAULT_TZ=$DEFAULT_TZ

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive TZ=$DEFAULT_TZ apt-get install -y \
   tzdata \
   sudo \
   curl \
   git && \
   rm -rf /var/lib/apt/lists/*

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz && rm -rf /opt/nvim && sudo tar -C /opt -xzf nvim-linux64.tar.gz 
ENV PATH="$PATH:/opt/nvim-linux64/bin"

RUN curl -s https://get.modular.com | sh -

ARG MODULAR_HOME="/root/.modular"
ENV MODULAR_HOME=$MODULAR_HOME

# Change permissions to allow for Apptainer/Singularity containers
RUN chmod -R a+rwX /root

