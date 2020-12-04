class MocktailSerializer < ActiveModel::Serializer
  attributes :id, :name, :imageUrl, :tasting_notes, :glassware, :instruction, :like, :dislike, :tag
  has_many :ingredients
  has_many :favorites
  has_many :users, through: :favorites
end
