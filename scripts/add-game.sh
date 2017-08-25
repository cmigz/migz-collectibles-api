API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/games"
curl "${API}${URL_PATH}/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "game_name": "'"${NAME}"'",
      "game_platform": "'"${PLATFORM}"'",
      "game_genre": "'"${GENRE}"'",
      "game_year": "'"${YEAR}"'",
      "user_id": "'"${USERID}"'",
      "created_at": "'"current_timestamp"'",
      "updated_at": "'"current_timestamp"'"

    }
  }'
