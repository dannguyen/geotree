class CreateGeotreeLocations < ActiveRecord::Migration
  def change
    create_table :geotree_locations do |t|
      t.string   "short_name"
      t.string   "long_name"
      t.string   "type"
      t.decimal  "lat",        :precision => 10, :scale => 0
      t.decimal  "lng",        :precision => 10, :scale => 0
      t.text     "geometry"
      t.string   "ancestry"
      t.datetime "created_at",                                :null => false
      t.datetime "updated_at",                                :null => false

      t.timestamps
    end

    add_index :geotree_locations, [:ancestry]
    add_index :geotree_locations, [:long_name]
  end
end
