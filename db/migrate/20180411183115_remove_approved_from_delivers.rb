class RemoveApprovedFromDelivers < ActiveRecord::Migration[5.1]
  def change
    remove_column :delivers, :approved, :boolean
  end
end
