class Restaurant < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments

    def self.get_by_location(location)
        YelpSearch.new(location).to_restaurants
    end
    
end
