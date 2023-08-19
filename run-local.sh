#!/bin/bash


DATA=${1:-test}


docker run -it -v $PWD/$DATA:/app/data turbobert/jkl
