require "streets_of_chicago/version"
require 'unirest'

module StreetsOfChicago
  class Street
    attr_reader :direction, :full_street_name, :max_address, :min_address, :street, :suffix, :suffix_direction

    def initialize(hash)
      @direction = hash["direction"]
      @full_street_name = hash["full_street_name"]
      @max_address = hash["max_address"]
      @min_address = hash["min_address"]
      @street = hash["street"]
      @suffix = hash["suffix"]
      @suffix_direction = hash["suffix_direction"]
    end

    def self.all
      streets_array = Unirest.get("https://data.cityofchicago.org/resource/pasq-g8mx.json").body
      convert_hashes_to_objects(streets_array)
    end
    
    def self.search(search_term)
      streets_array = Unirest.get("https://data.cityofchicago.org/resource/pasq-g8mx.json?$q=#{search_term}").body
      convert_hashes_to_objects(streets_array)
      
    end

    private

    def self.convert_hashes_to_objects(array_of_hashes)
      streets = []

      array_of_hashes.each do |street_hash|
        streets << Street.new(street_hash)
      end

      streets
      
    end

  end
end
