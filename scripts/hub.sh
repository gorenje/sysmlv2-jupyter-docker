#!/bin/bash

## Entrypoint for the DockerHub image. Allows for deactivating the Jupyter
## token.

if [ "${NO_TOKEN}" == 'yes' ]; then
    echo "DELETEING JUPYTER TOKEN"
    jupyter notebook --generate-config
    echo "c.NotebookApp.token = ''" >> ${HOME}/.jupyter/jupyter_notebook_config.py
fi

jupyter lab --ip 0.0.0.0 --port 8888
