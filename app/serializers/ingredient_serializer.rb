class IngredientSerializer < ActiveModel::Serializer
    attributes :id, :name, :measurement, :mocktail_id
    belongs_to :mocktail
end
  