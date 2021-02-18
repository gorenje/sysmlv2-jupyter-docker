# Docker image for running SysML in Jupyter

Create a docker image for running [SysML v2 Release](https://github.com/Systems-Modeling/SysML-v2-Release) in Jupyter.

The setup is taken from the [Jupyter installation](https://github.com/Systems-Modeling/SysML-v2-Release/tree/master/install/jupyter) using the 2021-01 release.


## Prerequistes

- [Docker](https://www.docker.com/)

Everything else is installed by the build.

## Usage

### Using Makefile

To build the image

    make build

To run the image

    make run

Then point your browser to the URL displayed by Jupyter, something like:

```
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://172.17.0.2:8888/?token=392e5b7c0e8cde28d6f988862bc7ad81ba6c517e31b63520
     or http://127.0.0.1:8888/?token=392e5b7c0e8cde28d6f988862bc7ad81ba6c517e31b63520
```

The token is unique for each start of the container.


### Docker Commands

Building:

    docker build -t sysml .

Running:

    docker run -p 8888:8888 -t sysml:latest



## Example Notebooks

- KernelMagic is a notebook demostrating the meta commands of the SysML Kernel. [Codebase](https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation/tree/master/org.omg.sysml.jupyter.kernel/src/main/java/org/omg/sysml/jupyter/kernel/magic) of the commands has more details.

## Inspiration

- [MBSE4U.com](https://mbse4u.com/2020/12/21/sysml-v2-release-whats-inside/) is where I found the meta commands.
