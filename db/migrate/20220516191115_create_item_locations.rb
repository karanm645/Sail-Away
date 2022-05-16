class CreateItemLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :item_locations do |t|
      t.references :item, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
