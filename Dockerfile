FROM ubuntu:16.04

MAINTAINER Mats Rynge <rynge@isi.edu>


RUN apt-get update && apt-get upgrade -y --allow-unauthenticated

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get install -y --allow-unauthenticated \
        gdb \
        git \
        libssl-dev \
        libzmq3-dev \
        python-dev \
        python-pip \
        python-zmq \
        software-properties-common \
        strace \
        sudo \
        wget \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Jupyter Notebook for iTorch
RUN pip install --upgrade pip
RUN pip install --upgrade jupyter

RUN mkdir -p /opt/torch

# Torch7 installation scripts - http://torch.ch/docs/getting-started.html
RUN git clone https://github.com/torch/distro.git /opt/torch --recursive && \
    cd /opt/torch && \
    bash install-deps && \
    ./install.sh

COPY .singularity.d /.singularity.d

# some extra singularity stuff
RUN cd / && \
    ln -s .singularity.d/actions/exec .exec && \
    ln -s .singularity.d/actions/run .run && \
    ln -s .singularity.d/actions/test .shell && \
    ln -s .singularity.d/runscript singularity

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt

