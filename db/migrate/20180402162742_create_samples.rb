class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :image
      t.string :title
      t.integer :star
      t.text :description

      t.timestamps
    end
  end
end
