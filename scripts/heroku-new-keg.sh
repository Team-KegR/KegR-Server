#!/bin/bash

curl --include --request POST https://kegr.herokuapp.com/kegs \
  --header "Content-Type: application/json" \
  --data '{
    "keg": {
      "name": "beer",
      "validation": "1",
      "kicked": "False"
    }
  }'
