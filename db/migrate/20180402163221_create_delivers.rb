class CreateDelivers < ActiveRecord::Migration[5.1]
  def change
    create_table :delivers do |t|
      t.string :name
      t.string :address
      t.text :objectlist
      t.boolean :delivers

      t.timestamps
    end
  end
end
