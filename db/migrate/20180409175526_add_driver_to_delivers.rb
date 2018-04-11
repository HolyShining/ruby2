class AddDriverToDelivers < ActiveRecord::Migration[5.1]
  def change
    add_column :delivers, :driver, :string
  end
end
