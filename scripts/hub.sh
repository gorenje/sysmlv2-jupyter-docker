#!/usr/bin/env bash

## Entrypoint for the DockerHub image.

## Allows for deactivation of the Jupyter token.
if [ "${NO_TOKEN}" == 'yes' ]; then
    echo "DELETING JUPYTER TOKEN"
    jupyter notebook --generate-config
    echo "c.NotebookApp.token = ''" >> ${HOME}/.jupyter/jupyter_notebook_config.py
fi

## Override the default workspace of 'lab' and make it open the readme.
mkdir -p /home/sysml/.jupyter/lab/workspaces

echo '{"data":{"layout-restorer:data":{"main":{"dock":{"type":"tab-area","currentIndex":1,"widgets":["notebook:README-SysMLv2Lab.ipynb"]},"mode":"multiple-document","current":"notebook:README-SysMLv2Lab.ipynb"},"left":{"collapsed":false,"current":"filebrowser","widgets":["filebrowser","running-sessions","command-palette","jp-property-inspector","tab-manager","extensionmanager.main-view"]},"right":{"collapsed":true,"widgets":[]}},"notebook:README-SysMLv2Lab.ipynb":{"data":{"path":"README-SysMLv2Lab.ipynb","factory":"Notebook"}}},"metadata":{"id":"/lab"}}' >> /home/sysml/.jupyter/lab.json

jupyter lab workspaces import /home/sysml/.jupyter/lab.json

## Start up Jupyter lab.
jupyter lab --ip 0.0.0.0 --port 8888 --no-browser --KernelSpecManager.ensure_native_kernel=False
