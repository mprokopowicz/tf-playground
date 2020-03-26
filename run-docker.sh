#!/usr/bin/env bash
docker run -v "$(pwd)":/code --rm -it $(docker build -q .)