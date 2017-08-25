class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.text :game_name
      t.text :game_platform
      t.text :game_genre
      t.integer :game_year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
