class AddGroupToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :Group, null: false, foreign_key: true
  end
end
