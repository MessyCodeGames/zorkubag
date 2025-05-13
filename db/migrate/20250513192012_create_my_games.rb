class CreateMyGames < ActiveRecord::Migration[7.1]
  def change
    create_table :my_games do |t|
      t.string :name

      t.timestamps
    end
  end
end
