class RemoveIsDeliverdFromDelivers < ActiveRecord::Migration[5.1]
  def change
    remove_column :delivers, :is_deliverd, :boolean
  end
end
