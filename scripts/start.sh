#!/bin/bash

docker run --rm -ti \
  -e ENV=development \
  -w /app \
  -p 8080:8080 \
  -v $(pwd):/app \
  transparent-api scripts/inside-container.sh npm start
