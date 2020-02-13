#!/usr/bin/env bash

set -euo pipefail

docker run -i new ssh -V
docker run -d -p 20:22 new
sleep 5
echo ' ' | netcat localhost 20
