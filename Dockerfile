FROM openjdk:17-slim

WORKDIR /root

## wget is used to retrieve Conda and SysML Release.
RUN apt-get --quiet --yes update && apt-get install -yqq wget

##
## Miniconda installation page:
## https://docs.conda.io/en/latest/miniconda.html#linux-installers
##
RUN wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

##
## SysML page: https://github.com/Systems-Modeling/SysML-v2-Release
##
RUN wget -q https://github.com/Systems-Modeling/SysML-v2-Release/archive/2021-01.tar.gz

## Install MiniConda
RUN chmod 755 /root/Miniconda3-latest-Linux-x86_64.sh
RUN mkdir /usr/conda
RUN /root/Miniconda3-latest-Linux-x86_64.sh -f -b -p /usr/conda
RUN /usr/conda/condabin/conda init

## Install SysML
RUN tar xzf 2021-01.tar.gz

WORKDIR /root/SysML-v2-Release-2021-01/install/jupyter

## This is the path that conda init setups but conda init has no effect
## here, so setup the PATH by hand. Else install.sh won't work.
ENV PATH="/usr/conda/bin:/usr/conda/condabin:/usr/local/openjdk-17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
RUN ./install.sh

## These are required for exporting notebooks as PDF and aren't installed
## by Conda.
RUN apt-get --quiet --yes update && apt-get install -yqq \
  inkscape                    \
  texlive-fonts-recommended   \
  texlive-generic-recommended \
  texlive-xetex

WORKDIR /root/SysML-v2-Release-2021-01/

## Example Notebooks
COPY KernelMagic.ipynb .

## Security Warning:
##
## If you're planning to use this for anything other than test purposes,
## then setup a user and remove the --allow-root here. Should not be run
## as root but for test and individual purposes, this is should fine.
ENTRYPOINT ["jupyter", "lab", \
  "--allow-root",             \
  "--ip", "172.17.0.2",       \
  "--port", "8888"]
