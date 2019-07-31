FROM jupyter/scipy-notebook
LABEL maintainer="Naoya Ikeda <n_ikeda@hotmail.com>"
COPY azcopy_linux_amd64_10.2.1/azcopy /usr/local/bin
RUN echo "now building..." && \
    apt update && \
    apt install -y vim && \
    conda update -n base -c defaults conda -y && \
    conda install -c conda-forge librosa && \
    conda install rise -y && \
    jupyter-nbextension install rise --py --sys-prefix && \
    jupyter-nbextension enable rise --py --sys-prefix && \
    pip install pyworld && \
    pip install pysptk
