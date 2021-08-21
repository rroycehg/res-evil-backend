class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :affiliation, :bio, :img
end
