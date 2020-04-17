#!/bin/sh

set -x

if [[ "$1" == "true" ]]; then
  cat "$GITHUB_EVENT_PATH" | jq -M .
fi

if [[ "$2" == "true" ]]; then
  git --no-pager log --decorate=short -n 20
fi

if [[ "$3" == "true" ]]; then
  env
fi
