#!/usr/bin/env bash

script_call() {
  if sh ./runcrud.sh; then
    echo "Successfully script call"
  else
    echo "Cannot script call"
    fail
  fi
}

run_website() {
  if open https://motobanda.pl; then
    open http://localhost:8080/crud/v1/task/getTasks
  else
    fail
  fi
}

fail() {
   echo "Errors have occurred"
}

if ./gradlew build; then
   script_call
   run_website
else
   fail
fi