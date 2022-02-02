FROM ubuntu:focal 


# Install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends git vim tmux imagemagick python3-pip python3-setuptools

# Install python packages
RUN pip3 install mkdocs mkdocs-material

WORKDIR /home/vscode
