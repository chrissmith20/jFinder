class Workstable < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :position, null: false
      t.string :company, null: false
      t.string :location, null: false
      t.string :salary, null: false
      t.string :date, null: false
      t.text :description, null: false
      t.string :url, null: false

      t.timestamps null: false
    end
  end
end
