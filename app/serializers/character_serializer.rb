class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :affiliation, :bio, :img, :VIT, :STR, :DEF

  has_many :favorites
end
