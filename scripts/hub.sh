#!/bin/bash

## Entrypoint for the DockerHub image.

## Allows for deactivation of the Jupyter token.
if [ "${NO_TOKEN}" == 'yes' ]; then
    echo "DELETING JUPYTER TOKEN"
    jupyter notebook --generate-config
    echo "c.NotebookApp.token = ''" >> ${HOME}/.jupyter/jupyter_notebook_config.py
fi

## Start up Jupyter lab.
jupyter lab --ip 0.0.0.0 --port 8888
