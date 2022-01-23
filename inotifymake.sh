#!/bin/bash

while inotifywait -e modify ./; do
  echo "make..."
  make -j64
done
