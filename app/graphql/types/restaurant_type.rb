module Types
  class RestaurantType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :url, String, null: true
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    field :image_url, String, null: true
    field :address, String, null: true
    field :description, String, null: true
    field :zip_code, Integer, null: true
    field :score, Float, null: true
    field :phone, String, null: true
    field :yelp_id, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
