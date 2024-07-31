ARG BASE_IMAGE=modular-sdk
FROM ${BASE_IMAGE}

RUN modular install mojo
ENV PATH="$PATH:$MODULAR_HOME/pkg/packages.modular.com_mojo/bin"

# Change permissions to allow for Apptainer/Singularity containers
RUN chmod -R a+rwX /root

