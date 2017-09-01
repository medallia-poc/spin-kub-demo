#! /bin/bash
IMAGE_NAME=$1
DIR=$2
COMMIT=$3
BRANCH_NAME=$4
IMG="${IMAGE_NAME}"

# First we build the docker image for current branch HEAD and push it.
docker build --tag="${IMG}:${COMMIT}" ${DIR}
docker tag "${IMG}:${COMMIT}" "${IMG}:${BRANCH_NAME}"
docker push "${IMG}:${COMMIT}"
docker push "${IMG}:${BRANCH_NAME}"

