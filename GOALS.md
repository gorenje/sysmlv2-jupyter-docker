## Goals and Aims of this Project

For all [releases](https://github.com/Systems-Modeling/SysML-v2-Release/releases) of the SysML v2 implementation, this project aims to provide:

1. The basis for DockerHub images;

    - Docker images are automatically built by DockerHub, triggered by updates to GitHub branches. Implies: that those docker images can change over time. 
    - DockerHub images are generated from the `Dockerfile.hub` file. Each release branch has it's own version.
    
2. A framework for regression testing based on Jupyter Notebooks; and

    - Example [Notebooks](https://github.com/gorenje/sysmlv2-jupyter-docker/tree/main/notebooks) provide an ad-hoc range of functionality that can be tested. 
    - Notebooks are updated (output cleared + run all cells in Jupyter) for each release. Implies: Notebooks change for each release.
    - Nbviewer and MyBinder provide the execution environment for this.
    - The `Dockerfile` file provides the docker image to be run on MyBinder.

3. A local docker compose based runtime with API, Jupyer and Postgres.

    - This setup starts an API server, a Jupyter server and connects them together. 
    - `%publish` goes to the local API server
    - The `docker-compose.yml`, `Dockerfile.api` and `Dockerfile.jupyter` provide the backbone for this setup.

Support for separate releases is achieved via [branches](https://github.com/gorenje/sysmlv2-jupyter-docker/branches). Back-porting of specific features, including notebooks, is encouraged. Implies: that branches and release tags are actively modified.