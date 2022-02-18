# Docker image for running SysML v2

Create a docker image for running [SysML v2 Release](https://github.com/Systems-Modeling/SysML-v2-Release) in Jupyter.

The setup is taken from the [Jupyter installation](https://github.com/Systems-Modeling/SysML-v2-Release/tree/master/install/jupyter).

In addition, an [API Server](https://github.com/Systems-Modeling/SysML-v2-API-Services) is also started and everything published in Jupyter will be pushed into this server.

## Remote Services

You can try this out on Binder, via DockerHub or just view the notebooks at nbviewer.

### Binder

You can run this on [Binder](https://mybinder.org) but it will only run the SysMLv2-based Jupyter server, not the API server.

Latest version: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/HEAD)

See below for specific release links.

You can also view notebooks via [nbviewer](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/master/notebooks) and from there it's possible to start up [Binder](https://mybinder.org).

### Dockerhub

Docker images are also [available](https://hub.docker.com/r/gorenje/sysmlv2-jupyter). These are only of the Jupyter installation not the API server.

See below for specific pull statements.

### nbviewer

Repo can also be viewed using [nbviewer](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/main/).

See below for specific release links.

### Dedicated Server

Thanks to [Tim Weilkiens](https://github.com/Weilkiti), there is now a dedicated [server](https://www.sysmlv2lab.com/) running the [latest](https://hub.docker.com/r/gorenje/sysmlv2-jupyter/tags?ordering=last_updated&page=1&name=latest) version of this repo.

### Overview

| [nbviewer](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/main/) | [binder](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/HEAD) | [docker hub](https://hub.docker.com/r/gorenje/sysmlv2-jupyter) |
|:--|:--|:--|
| [2022-01](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2022-01/) | [2022-01](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2022-01) |  `docker pull gorenje/sysmlv2-jupyter:2022-01` |
| [2021-12](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-12/) | [2021-12](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-12) |  `docker pull gorenje/sysmlv2-jupyter:2021-12` |
| [2021-11](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-11/) | [2021-11](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-11) |  `docker pull gorenje/sysmlv2-jupyter:2021-11` |
| [2021-10](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-10/) | [2021-10](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-10) |  `docker pull gorenje/sysmlv2-jupyter:2021-10` |
| [2021-09](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-09/) | [2021-09](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-09) |  `docker pull gorenje/sysmlv2-jupyter:2021-09` |
| [2021-08.1](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-08.1/) | [2021-08.1](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-08.1) |  `docker pull gorenje/sysmlv2-jupyter:2021-08.1` |
| [2021-08](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-08/) | [2021-08](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-08) |  `docker pull gorenje/sysmlv2-jupyter:2021-08` |
| [2021-06](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-06/) | [2021-06](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-06) |  `docker pull gorenje/sysmlv2-jupyter:2021-06` |
| [2021-05](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-05/) | [2021-05](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-05) |  `docker pull gorenje/sysmlv2-jupyter:2021-05` |
| [2021-04](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-04/) | [2021-04](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-04) |  `docker pull gorenje/sysmlv2-jupyter:2021-04` |
| [2021-03](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-03/) | [2021-03](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-03) |  `docker pull gorenje/sysmlv2-jupyter:2021-03` |
| [2021-02](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-02/) | [2021-02](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-02) |  `docker pull gorenje/sysmlv2-jupyter:2021-02` |
| [2021-01](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2021-01/) | [2021-01](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2021-01) | `docker pull gorenje/sysmlv2-jupyter:2021-01`  |
| [2020-12](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2020-12/) | [2020-12](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2020-12) |  `docker pull gorenje/sysmlv2-jupyter:2020-12` |
| [2020-11](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2020-11/)  | [2020-11](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2020-11) |  `docker pull gorenje/sysmlv2-jupyter:2020-11` |
| [2020-10](https://nbviewer.jupyter.org/github/gorenje/sysmlv2-jupyter-docker/tree/release-2020-10/) |  [2020-10](https://mybinder.org/v2/gh/gorenje/sysmlv2-jupyter-docker/release-2020-10) | `docker pull gorenje/sysmlv2-jupyter:2020-10` |

## Local Usage

Be aware, building the docker images will take a while since all the software
packages will be retrieved. Everything is built and run locally.

### Prerequistes

- [Docker](https://www.docker.com/)

Everything else is installed by the build process.

### Makefile

To start up the SysML-Jupyter server, the postgres server and the API server:

    make spin-up

Then point your browser first to ```http://localhost:9000/docs/``` - this will setup
the database for the API server. Once this displays a page, then point your
browswer to the Jupyter page. This is on ```http://localhost:8888```,
don't use the hostname ```sysmljupyter```, that's internal to docker.

```
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://sysmljupyter:8888/?token=392e5b7c0e8cde28d6f988862bc7ad81ba6c517e31b63520
     or http://127.0.0.1:8888/?token=392e5b7c0e8cde28d6f988862bc7ad81ba6c517e31b63520
```

The token is unique for each start of the container.

NOTE: If `localhost` does not work in the URLs, try `127.0.0.1` instead.

### Using Docker

If you want to do this using docker only, i.e. no makefile, then have a
look at the Makefile. Basically it's something along the lines of:

    docker build -t sysml.jupyter -f Dockerfile.jupyter .
    docker build -t sysml.api     -f Dockerfile.api     .
    docker network create thenetwork
    docker volume create postgresdbserver
    docker-compose -f docker-compose.yml up

That is the same as doing ```make spin-up```.

### Other Docker Builds

The Makefile also does the following builds for local usage:

1. `make build-mybinder` will build the docker image that is used with mybinder. This image can then be run locally using `make run-mybinder`.

2. `make build-hub` will build the docker hub image. Running this image can be done with `make run-hub`.

These also work for each release that is supported by this repo.

### Checking out other releases

Each release has it's own branch, so for example to test the [SysML v2 Release 2020-12](https://github.com/Systems-Modeling/SysML-v2-Release/releases/tag/2020-12), do the following:

```
git checkout release-2020-12
make run-hub
```

That will locally start DockerHub Jupyter image with the 2020-12 release.

## Production Use?

Don't.

This isn't designed for production use, this is for local or trusted use only.

## Example Notebooks

There are a few example notebooks included in the image, their usefulness
might vary according to your experience level.

## Creating Your Own Notebooks

There is a "mydata" folder that you can create your own notebooks in. It is tied to your local file system, and thus will persist over time.

## Inspiration

- [MBSE4U.com](https://mbse4u.com/2020/12/21/sysml-v2-release-whats-inside/) is where I found the meta commands.
- Also from MBSE4U.com, the example [notebook](https://nbviewer.jupyter.org/github/MBSE4U/SysMLv2JupyterBook/blob/master/SysMLv2JupyterBook.ipynb) at [nbviewer.jupyter.org](https://nbviewer.jupyter.org).

## Building a new Release

When a new [release tag](https://github.com/Systems-Modeling/SysML-v2-Release/tags) becomes available, the following things need doing:

(Since I do this once a month, I thought I might write this up - please ignore)

1. Ensure there is a corresponding [API Server](https://github.com/Systems-Modeling/SysML-v2-API-Services/tags) release.
2. On the main branch, follow this [commit](https://github.com/gorenje/sysmlv2-jupyter-docker/commit/2adf4b3fc24a7184e2e5f26ed9edd2d4ffce0370) to update all dockerfiles & Makefile for the new release (in this case 2021-03). Important is also the addition of the [github action](https://github.com/gorenje/sysmlv2-jupyter-docker/blob/2adf4b3fc24a7184e2e5f26ed9edd2d4ffce0370/.github/workflows/2021-03.dockerpush.yml) for generating a docker image.
3. Run `make build` to check that all dockerfiles build locally. Make sure that Docker is running locally.
4. In a terminal window, run `make spin-up` to start a Jupyter server locally.
5. In another termainal window, run `make update-testsuite` to update all the test notebooks in the repository. This also retrieves the notebooks from the Docker images and, in the end, there is a commit similar to this [one](https://github.com/gorenje/sysmlv2-jupyter-docker/commit/3597bc3cc1fa2375163b562b02765b4640e3af22).
6. Create a new branch for the release, something like `release-2021-03` ain't bad :smiley:. On that branch, remove all github actions so that only the one for the branch is left, i.e. [this commit](https://github.com/gorenje/sysmlv2-jupyter-docker/commit/5bba34afa7817098f8f5f2477cf076c9641d9703).
7. Push main and the new branch to github.
8. Done.

## Licensing

Both [SysMLv2 API Server](https://github.com/Systems-Modeling/SysML-v2-API-Services/blob/master/LICENSE) and [SysMLv2 Release](https://github.com/Systems-Modeling/SysML-v2-Release/blob/master/LICENSE) are licensed under the LGPL and this continues to be the case.

**This project does not make any changes to the existing licensing of the
referenced projects.**

This project is also licensed under the [LGPL](/LICENSE).
