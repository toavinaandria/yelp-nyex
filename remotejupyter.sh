#!/bin/bash

# This script launches a Jupyter notebook server that can be accessed
# remotely on the specified port. This should be run on the remote server


echo The Jupyter notebook will be opened on the default port 8888
jupyter notebook --ip='*' --port=8888 --no-browser
