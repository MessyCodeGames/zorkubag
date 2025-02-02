class ChangeTypeColumnToCardCategoryToKillMeans < ActiveRecord::Migration[7.1]
  def change
    rename_column :kill_means, :type, :card_type
  end
end
