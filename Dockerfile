FROM apache/beam_python3.10_sdk:2.59.0

# Install mamba using Micromamba installer
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://micromamba.snakepit.net/api/micromamba/linux-64/latest | tar -xvj bin/micromamba -O > /usr/local/bin/micromamba && chmod +x /usr/local/bin/micromamba
RUN /usr/local/bin/micromamba shell init -p /opt/conda -s bash

COPY environment.yml /tmp/environment.yml
RUN /usr/local/bin/micromamba env update -f /tmp/environment.yml
