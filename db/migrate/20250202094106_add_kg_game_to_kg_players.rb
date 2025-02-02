class AddKgGameToKgPlayers < ActiveRecord::Migration[7.1]
  def change
    add_reference :kg_players, :kg_game, null: false, foreign_key: true
  end
end
