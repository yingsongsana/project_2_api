#!/bin/bash

curl "http://localhost:4741/wines" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  # --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "wine": {
      "style": "'"${STYLE}"'"
      "variety": "'"${VARIETY}"'"
      "producer": "'"${PRODUCER}"'"
      "appearance": "'"${APPEARANCE}"'"
      "aroma": "'"${AROMA}"'"
      "tasting_notes": "'"${NOTES}"'"
      "memories": "'"${MEM}"'"
    }
  }'

echo
