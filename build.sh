#!/bin/bash


docker buildx build --platform linux/arm64,linux/amd64 -t turbobert/jkl:latest . --push
