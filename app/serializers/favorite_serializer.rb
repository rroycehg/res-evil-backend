class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :character
  has_one :user
end
