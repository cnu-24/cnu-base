FROM mcr.microsoft.com/devcontainers/miniconda:0-3

COPY environment.yml /tmp/conda-tmp/
RUN umask 0002 && /opt/conda/bin/conda env update -n base -f /tmp/conda-tmp/environment.yml && rm -rf /tmp/conda-tmp

# [Optional] Uncomment to install a different version of Python than the default
# RUN conda install -y python=3.6 \
#     && pip install --no-cache-dir pipx \
#     && pipx reinstall-all

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
