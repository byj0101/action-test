#!/bin/bash 

if [[ ${GIT_BRANCH} == "release/"* ]]; then
  aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_ID} --paths '/*'
fi

if [[ ${GIT_BRANCH} == "master" ]]; then
  aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_ID} --paths '/*'
fi

if [[ ${GIT_BRANCH} == "demo" ]]; then
  aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_ID} --paths '/*'
fi