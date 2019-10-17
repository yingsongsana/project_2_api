#!/bin/bash

curl "http://localhost:4741/wines" \
  --include \
  --request GET

echo
