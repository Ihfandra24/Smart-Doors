class CreateDors < ActiveRecord::Migration[7.0]
  def change
    create_table :dors do |t|
      t.string :name

      t.timestamps
    end
  end
end
