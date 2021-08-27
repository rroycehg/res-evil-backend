class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :user_id
  has_one :character
  has_one :user
end
