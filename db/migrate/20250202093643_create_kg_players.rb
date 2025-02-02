class CreateKgPlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :kg_players do |t|
      t.string :name
      t.string :color
      t.string :target
      t.string :kill_mean
      t.string :state
      t.integer :number_of_kills
      t.string :role

      t.timestamps
    end
  end
end
