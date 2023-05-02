class RemoveGroupFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :Group, null: false, foreign_key: true

  end
end
