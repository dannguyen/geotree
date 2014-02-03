require 'geocoder'
module Geotree
  class GeocoderQuery < ActiveRecord::Base
    attr_accessible :name if defined?(ActiveModel::MassAssignmentSecurity)
    validates_uniqueness_of :name 

    has_many :geocoder_responses


    def self.normalize_query_string(str)
      str.split(',').map{|s| s.squeeze(' ').strip.upcase }.join(",")
    end

    # str is a query
    #
    # returns new unsaved LocationQuery

    def self.build_from_query(str)
      query = self.where(name: normalize_query_string(str)).first_or_initialize
      if query.new_record?
        results = Geocoder.search(query.name)
        results.each_with_index do |res, idx|
          query.geocoder_responses.build(data: res.data, response_order: idx)
        end
      end

      return query
    end

  end
end
