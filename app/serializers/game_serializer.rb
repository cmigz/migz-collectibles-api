class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_name, :game_platform, :game_genre, :game_year
  has_one :user
end
