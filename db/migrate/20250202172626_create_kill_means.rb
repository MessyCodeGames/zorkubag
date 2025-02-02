class CreateKillMeans < ActiveRecord::Migration[7.1]
  def change
    create_table :kill_means do |t|
      t.string :name
      t.string :objective
      t.string :action_zone
      t.string :weapon
      t.string :flavor_test
      t.integer :difficulty
      t.string :type

      t.timestamps
    end
  end
end
