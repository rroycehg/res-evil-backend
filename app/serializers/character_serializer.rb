class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :affiliation, :bio, :img, :VIT, :STR, :DEF
end
