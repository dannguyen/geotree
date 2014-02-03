class CreateGeotreePlacements < ActiveRecord::Migration
  def change
    create_table :geotree_placements do |t|
      t.integer :placeable_id
      t.string :placeable_type
      t.integer :location_id

      t.timestamps
    end



  end
end
