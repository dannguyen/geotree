module Geotree
  class GeocoderResponse < ActiveRecord::Base
    attr_accessible :geocoder_query_id, :data
    serialize :data, Hash

    belongs_to :geocoder_query


  end
end
