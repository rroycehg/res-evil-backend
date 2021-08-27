class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  
  has_many :favorites
  has_many :characters, through: :favorites
end
