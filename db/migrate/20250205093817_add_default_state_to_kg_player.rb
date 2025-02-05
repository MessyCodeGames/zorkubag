class AddDefaultStateToKgPlayer < ActiveRecord::Migration[7.1]
  def change
    change_column_default :kg_players, :state, "alive"
  end
end
