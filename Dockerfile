FROM jupyter/scipy-notebook
LABEL maintainer="Naoya Ikeda <n_ikeda@hotmail.com>"
RUN echo "now building..." && \
    conda install -c conda-forge librosa

