class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :delivers, :delivers, :is_deliverd
  end
end
