class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_date
  has_one :user
  has_one :restaurant
end
