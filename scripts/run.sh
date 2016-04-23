#!/bin/bash

docker run --rm -ti \
  -e ENV=development \
  -w /app \
  -v $(pwd):/app \
  -p 1337:1337 \
  transparent-api scripts/inside-container.sh "$@"
