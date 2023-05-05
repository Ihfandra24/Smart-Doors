class CreateGateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :gate_groups do |t|
      t.references :gate, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
