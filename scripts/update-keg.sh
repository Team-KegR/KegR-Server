#!/bin/bash

curl --include --request PATCH http://localhost:3000/kegs/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "keg": {
      "name": "new beer"
    }
  }'
