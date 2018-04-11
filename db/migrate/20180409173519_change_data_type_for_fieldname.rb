class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.1]
  def self.up
    change_table :delivers do |t|
      t.change :driver, :string
    end
  end
  def self.down
    change_table :tablename do |t|
      t.change :driver, :integer
    end
  end
end
