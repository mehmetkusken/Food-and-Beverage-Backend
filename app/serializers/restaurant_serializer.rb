class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :latitude, :longitude, :image_url, :address, :description, :zip_code, :score, :phone
  
end
