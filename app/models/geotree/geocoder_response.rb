module Geotree
  class GeocoderResponse < ActiveRecord::Base
    attr_accessible :geocoder_query_id,  :response_order, :data if defined?(ActiveModel::MassAssignmentSecurity)
    serialize :data, Hash

    validates_uniqueness_of :geocoder_query_id, scope: [:response_order]
    belongs_to :geocoder_query


  end
end
