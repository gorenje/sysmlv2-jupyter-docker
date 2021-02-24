# Docker image for running SysML v2

Create a docker image for running [SysML v2 Release](https://github.com/Systems-Modeling/SysML-v2-Release) in Jupyter.

The setup is taken from the [Jupyter installation](https://github.com/Systems-Modeling/SysML-v2-Release/tree/master/install/jupyter) using the 2021-01 release.

This will also start a [API Server](https://github.com/Systems-Modeling/SysML-v2-API-Services) so that everything that is published from Jupyter will go to this server.

## Trying it out?

You can run this on [Binder](https://mybinder.org) but it will only run the Jupyter server, not the API server.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/HEAD)

## Prerequistes

- [Docker](https://www.docker.com/)

Everything else is installed by the build.

## Usage

Be aware, building the docker images will take a while since all the software
packages are retrieved. There are no images at hub.docker.com --> everything
is built and run locally.

To start up the Jupyter server, the postgres server and the API server:

    make spin-up

Then point your browser first to ```http://localhost:9000/docs/``` - this will setup
the database for the API server. Once this displays a page, then point your
browswer to the Jupyter page. This should be somewhere on ```localhost:8888```,
don't use the hostname ```sysmljupyter```, that's internal to docker.

```
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://sysmljupyter:8888/?token=392e5b7c0e8cde28d6f988862bc7ad81ba6c517e31b63520
     or http://127.0.0.1:8888/?token=392e5b7c0e8cde28d6f988862bc7ad81ba6c517e31b63520
```

The token is unique for each start of the container.

## Using Docker

If you want to do this using docker only, i.e. no makefile, then have a
look at the Makefile. Basically it's something along the lines of:

    docker build -t sysml .
    docker build -t sysml.api -f Dockerfile.api .
    docker network create thenetwork
    docker volume create postgresdbserver
    docker-compose -f docker-compose.yml up

And that should be the same as ```make spin-up```.

## Production Use?

Don't.

This isn't designed for production use, this is for local or trusted use only.

## Example Notebooks

- KernelMagic is a notebook demostrating the meta commands of the SysML Kernel. [Codebase](https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation/tree/master/org.omg.sysml.jupyter.kernel/src/main/java/org/omg/sysml/jupyter/kernel/magic) of the commands has more details.

## Inspiration

- [MBSE4U.com](https://mbse4u.com/2020/12/21/sysml-v2-release-whats-inside/) is where I found the meta commands.
