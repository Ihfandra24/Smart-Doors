class AddNikToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :NIK, :string
    add_index :users, :NIK, unique: true
  end
end
