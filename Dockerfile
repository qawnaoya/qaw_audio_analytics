FROM jupyter/scipy-notebook
USER root
LABEL maintainer="Naoya Ikeda <n_ikeda@hotmail.com>"
COPY azcopy_linux_amd64_10.2.1/azcopy /usr/local/bin
RUN echo "now building..." && \
    cd /root && \
    apt update && \
    apt install -y vim && \
    conda update -n base -c defaults conda -y && \
    conda install -c conda-forge librosa && \
    conda install rise -y && \
    jupyter-nbextension install rise --py --sys-prefix && \
    jupyter-nbextension enable rise --py --sys-prefix && \
    pip install pyworld && \
    pip install pysptk && \
    pip install essentia && \
    git clone https://github.com/r9y9/pyreaper && \
    cd pyreaper && \
    git submodule update --init --recursive && \
    python setup.py install
