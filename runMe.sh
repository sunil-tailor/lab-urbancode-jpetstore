#!/bin/bash
source env.sh ; /usr/local/opt/gettext/bin/envsubst  < "template.yaml" > "docker-compose.yaml"

