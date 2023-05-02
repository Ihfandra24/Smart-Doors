class CreateDorGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :dor_groups do |t|
      t.references :group, null: false, foreign_key: true
      t.references :dor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
