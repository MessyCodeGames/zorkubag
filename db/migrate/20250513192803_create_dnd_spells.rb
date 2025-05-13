class CreateDndSpells < ActiveRecord::Migration[7.1]
  def change
    create_table :dnd_spells do |t|
      t.string :name
      t.string :spell_class
      t.integer :level
      t.string :school
      t.string :casting_time
      t.string :range
      t.string :components
      t.string :duration
      t.string :concentration
      t.string :ritual
      t.boolean :concentration_bool
      t.boolean :ritual_bool

      t.timestamps
    end
  end
end
