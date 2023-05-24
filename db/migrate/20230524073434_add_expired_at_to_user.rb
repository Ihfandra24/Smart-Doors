class AddExpiredAtToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :expired_at, :datetime
  end
end
