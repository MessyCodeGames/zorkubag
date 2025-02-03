class AddKillMeanToKgPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :kg_players, :kill_mean_id, :bigint
  end
end
