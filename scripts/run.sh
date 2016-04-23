#!/bin/bash

docker run --rm -ti \
  -e ENV=development \
  -w /app \
  -v $(pwd):/app \
  -p 8080:8080 \
  transparent-api scripts/inside-container.sh "$@"
