# Inherit from an upstream image
FROM apache/beam_python3.10_sdk:2.59.0

RUN conda install -c conda-forge mamba -y

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

