class CreateGeotreeGeocoderResponses < ActiveRecord::Migration
  def change
    create_table :geotree_geocoder_responses do |t|
      t.integer  "geocoder_query_id"
      t.integer  "response_order"
      t.text     "data"
      t.datetime "created_at",        :null => false
      t.datetime "updated_at",        :null => false
      t.timestamps
    end

    add_index :geotree_geocoder_responses, [:geocoder_query_id]
  end
end
