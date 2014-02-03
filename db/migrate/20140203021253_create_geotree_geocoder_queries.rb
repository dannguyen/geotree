class CreateGeotreeGeocoderQueries < ActiveRecord::Migration
  def change
    create_table :geotree_geocoder_queries do |t|
      t.string   "name"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
      t.timestamps
    end

    add_index :geotree_geocoder_queries, [:name]
  end
end
