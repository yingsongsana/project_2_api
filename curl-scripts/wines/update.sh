curl "http://localhost:4741/wines/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "wine": {
      "style": "'"${STYLE}"'",
      "variety": "'"${VARIETY}"'",
      "producer": "'"${PRODUCER}"'",
      "appearance": "'"${APPEARANCE}"'",
      "aroma": "'"${AROMA}"'",
      "tasting_notes": "'"${NOTES}"'",
      "memories": "'"${MEM}"'",
      "name": "'"${NAME}"'",
      "country": "'"${COUNTRY}"'"
    }
  }'

  echo
