class AddUidToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :UID, :string
    add_index :users, :UID, unique: true
  end
end
