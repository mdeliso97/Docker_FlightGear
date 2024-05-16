# base image Flightgear
FROM ubuntu:20.04

# Install required packages
RUN apt-get update && \
    apt-get install -y \
    git \
    nano \
    sudo \
    dbus \
    libdbus-1-3 \
    dbus-x11 \
    python3.8 \
    python3-setuptools \
    python3.8-dev \
    python3-pip \
    wget \
    software-properties-common

# Install Flightgear
RUN add-apt-repository -y -u ppa:saiarcot895/flightgear && \
    apt-get -y --quiet install flightgear && \
    chmod a+w /usr/share/games/flightgear/Protocol

# Install dependencies
RUN pip3 install kconfiglib empy==3.3.4 jsonschema jinja2 pyros-genmsg

# Add fgfs to PATH
RUN echo "export PATH=\$PATH:/usr/games" >> ~/.bashrc

# Automatically run fgfs --launcher when the container starts
CMD ["fgfs", "--launcher"]

