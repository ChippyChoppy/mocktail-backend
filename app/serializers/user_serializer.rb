class UserSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :favorites 
    has_many :mocktails, through: :favorites
end
  