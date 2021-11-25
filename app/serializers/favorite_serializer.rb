class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :is_favorite
  has_one :user
  has_one :restaurant
end
