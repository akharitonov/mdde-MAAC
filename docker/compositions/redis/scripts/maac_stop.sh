#!/bin/sh

# Stop the currently running containers for the specified project without disposing the volumes

# Project name as defined when compose was launched
PROJ=${1:-mdde_maac}
# MDDE-MAAC repo root
REPO_ROOT=${2:-../../../..}
# MDDE core location
MDDE_DIR=${3:-${REPO_ROOT}/mdde}

docker-compose -f ${MDDE_DIR}/docker/compositions/redis/docker-compose.yml -f ../docker-compose.maac.yml -p $PROJ down