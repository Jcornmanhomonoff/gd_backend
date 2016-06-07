TOKEN="BAhJIiU3Yjg4NTBhMmM4OTVmZGE3ZGM3ZmQwMjg4MWM2MjYzYwY6BkVG--0e0084eb366edf9dcbbc5999b93e33047f8dd8c5"

curl --include --request POST http://localhost:3000/favorites \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "id": "1"
    },
    "favorite": {
      "name": "Cool Pen",
      "tag": "typography",
    }
  }'
