# FROM mcr.microsoft.com/devcontainers/miniconda:0-3
FROM ghcr.io/mamba-org/micromamba-devcontainer:git-c160e88-jammy

# COPY environment.yml /tmp/conda-tmp/
# RUN umask 0002 && /opt/conda/bin/conda env update -n base -f /tmp/conda-tmp/environment.yml && rm -rf /tmp/conda-tmp

COPY --chown="${MAMBA_USER}:${MAMBA_USER}" environment.yml ./
# RUN micromamba env create --yes --name cnu --file environment.yml && micromamba clean --all --yes
RUN micromamba update --yes --name base --file environment.yml

ARG MAMBA_DOCKERFILE_ACTIVATE=1

# [Optional] Uncomment to install a different version of Python than the default
# RUN conda install -y python=3.6 \
#     && pip install --no-cache-dir pipx \
#     && pipx reinstall-all

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
