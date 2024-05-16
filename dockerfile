# base image Flightgear
FROM ubuntu:20.04

RUN cd ~ &&\
    apt-get update -y &&\
    apt-get upgrade -y &&\
    apt-get install git -y &&\
    apt-get install -y nano &&\
    apt-get install -y sudo &&\
    apt-get install dbus libdbus-1-3 dbus-x11 -y &&\
    apt-get update -y &&\
    apt-get install python3.8 python3-setuptools python3.8-dev -y &&\
    apt-get install python3-pip -y &&\
    apt-get install wget -y &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common

# Install Flightgear
RUN cd ~ &&\
    add-apt-repository -y -u ppa:saiarcot895/flightgear &&\
    DEBIAN_FRONTEND=noninteractive apt-get -y --quiet install flightgear
RUN chmod a+w /usr/share/games/flightgear/Protocol

# Installing dependencies
RUN pip3 install kconfiglib &&\
    pip3 uninstall em &&\
    pip3 install empy==3.3.4 &&\
    pip3 install --user jsonschema &&\
    pip3 install --user jinja2 &&\
    pip3 install --user pyros-genmsg

# Automatically run fgfs --launcher when the container starts
CMD ["/usr/games/fgfs", "--launcher"]

