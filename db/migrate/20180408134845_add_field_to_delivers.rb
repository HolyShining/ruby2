class AddFieldToDelivers < ActiveRecord::Migration[5.1]
  def change
    add_column :delivers, :driver, :integer
  end
end
