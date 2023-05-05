class CreateGates < ActiveRecord::Migration[7.0]
  def change
    create_table :gates do |t|
      t.string :name

      t.timestamps
    end
  end
end
