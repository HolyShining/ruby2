class AddApprovedToDelivers < ActiveRecord::Migration[5.1]
  def change
    add_column :delivers, :approved, :boolean
  end
end
