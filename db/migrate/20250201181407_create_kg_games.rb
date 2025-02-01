class CreateKgGames < ActiveRecord::Migration[7.1]
  def change
    create_table :kg_games do |t|
      t.string :name
      t.string :password
      t.string :state

      t.timestamps
    end
  end
end
