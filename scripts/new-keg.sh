#!/bin/bash

curl --include --request POST http://localhost:3000/kegs \
  --header "Content-Type: application/json" \
  --data '{
    "keg": {
      "name": "beer",
      "validation": "1",
      "kicked": "False"
    }
  }'
