class Restaurant < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites

    def self.search(location,description)
        YelpSearch.new(location,description).to_restaurants
        
      end
    
    
end
