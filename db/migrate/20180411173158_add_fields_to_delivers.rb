class AddFieldsToDelivers < ActiveRecord::Migration[5.1]
  def change
    add_column :delivers, :state, :string
  end
end
