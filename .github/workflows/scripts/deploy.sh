#!/bin/bash 

if [[ ${GIT_BRANCH} == "release/"* ]]; then
  aws s3 sync ./build s3://${BUCKET_NAME}
fi

if [[ ${GIT_BRANCH} == "master" ]]; then
  aws s3 sync ./build s3://${BUCKET_NAME}
fi

if [[ ${GIT_BRANCH} == "demo" ]]; then
  aws s3 sync ./build s3://${BUCKET_NAME}
fi