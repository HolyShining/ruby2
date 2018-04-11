class RemoveDriverFromDelivers < ActiveRecord::Migration[5.1]
  def change
    remove_column :delivers, :driver, :string
  end
end
