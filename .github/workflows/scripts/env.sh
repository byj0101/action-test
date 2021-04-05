#!/bin/bash 

BRANCH=$(git rev-parse --abbrev-ref HEAD);

echo "11111"
echo $GIT_BRANCH
echo "222222"
echo "git branch :$GIT_BRANCH"



touch .env

if [[ $BRANCH == release/* ]]; then
  echo "release"
  echo REACT_APP_API_URL=1 >> .env
  echo REACT_APP_API_V1_URL=11 >> .env
  echo REACT_APP_PEOPLE_URL=21 >> .env
  echo REACT_APP_ACCOUNT_URL=31 >> .env
  echo REACT_APP_ACCOUNT_COOKIE_DOMAIN=41 >> .env
  echo REACT_APP_PERFORMANCE_PLUS_URL=51 >> .env
  echo REACT_APP_PERFORMANCE_PLUS_API_URL=61 >> .env
  echo SENTRY_ENVIRONMENT=71 >> .env
  echo SENTRY_DSN=81 >> .env
fi

if [ $BRANCH == "master" ]; then
  echo "master"
  echo REACT_APP_API_URL=101 >> .env
  echo REACT_APP_API_V1_URL=201 >> .env
  echo REACT_APP_PEOPLE_URL=301 >> .env
  echo REACT_APP_ACCOUNT_URL=401 >> .env
  echo REACT_APP_ACCOUNT_COOKIE_DOMAIN=501 >> .env
  echo REACT_APP_PERFORMANCE_PLUS_URL=601 >> .env
  echo REACT_APP_PERFORMANCE_PLUS_API_URL=701 >> .env
  echo SENTRY_ENVIRONMENT=801 >> .env
  echo SENTRY_DSN=901 >> .env
fi

if [ $BRANCH == "demo" ]; then
  echo "demo"
  echo REACT_APP_API_URL=1222201 >> .env
  echo REACT_APP_API_V1_URL=2222201 >> .env
  echo REACT_APP_PEOPLE_URL=3222201 >> .env
  echo REACT_APP_ACCOUNT_URL=4222201 >> .env
  echo REACT_APP_ACCOUNT_COOKIE_DOMAIN=522201 >> .env
  echo REACT_APP_PERFORMANCE_PLUS_URL=6222201 >> .env
  echo REACT_APP_PERFORMANCE_PLUS_API_URL=72222201 >> .env
  echo SENTRY_ENVIRONMENT=82222201 >> .env
  echo SENTRY_DSN=922201 >> .env
fi

cat .env