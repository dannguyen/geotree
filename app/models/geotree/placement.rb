module Geotree
  class Placement < ActiveRecord::Base
    attr_accessible :location_id, :placeable_id, :placeable_type if defined?(ActiveModel::MassAssignmentSecurity)

    belongs_to :location
    belongs_to :placeable, polymorphic: true

  end
end
