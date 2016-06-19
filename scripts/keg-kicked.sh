#!/bin/bash

curl --include --request PATCH https://kegr.herokuapp.com/kegs/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "keg": {
      "kicked": "true"
    }
  }'
