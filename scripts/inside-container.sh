#!/bin/bash

echo "-----> Copy modules"
ln -s /tmp/node_modules /app/node_modules

echo "-----> Running"
if [ -f "scripts/$1.sh" ]; then
  sh scripts/$1.sh
else
  $@
fi

echo '-----> Remove generated files'
rm /app/node_modules
