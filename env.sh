#!/bin/bash

# export UCD_SERVER_IP=$(docker inspect ucd \
# | jq '.[]|.NetworkSettings|.Networks|.bridge|.IPAddress' \
# | tr -d '"')

docker inspect --format '{{ .NetworkSettings.IPAddress }}' ucd
