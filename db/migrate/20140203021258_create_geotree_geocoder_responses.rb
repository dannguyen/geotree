class CreateGeotreeGeocoderResponses < ActiveRecord::Migration
  def change
    create_table :geotree_geocoder_responses do |t|
      t.integer  "location_query_id"
      t.text     "data"
      t.datetime "created_at",        :null => false
      t.datetime "updated_at",        :null => false
      t.timestamps
    end

    add_index :geotree_geocoder_responses, [:location_query_id]
  end
end
