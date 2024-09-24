FROM apache/beam_python3.10_sdk:2.59.0

# Install mamba using micromamba
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba -O > /usr/local/bin/micromamba && chmod +x /usr/local/bin/micromamba
RUN /usr/local/bin/micromamba install -c conda-forge mamba -y

COPY environment.yml /tmp/environment.yml

RUN micromamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml
