class AddRfidToGates < ActiveRecord::Migration[7.0]
  def change
    add_column :gates, :rfid, :string
  end
end
