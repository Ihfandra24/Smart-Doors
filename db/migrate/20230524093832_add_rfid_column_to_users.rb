class AddRfidColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rfid, :string
  end
end
