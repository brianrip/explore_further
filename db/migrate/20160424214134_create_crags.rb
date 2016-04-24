class CreateCrags < ActiveRecord::Migration
  def change
    create_table :crags do |t|
      t.integer :cid
      t.string :name
      t.integer :route_quantity
      t.string :climbing_styles

      t.timestamps null: false
    end
  end
end
