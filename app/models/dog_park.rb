class DogPark < ApplicationRecord

    def self.fetch_by_location(location)
        YelpSearch.new(location).to_dog_parks
    end
end