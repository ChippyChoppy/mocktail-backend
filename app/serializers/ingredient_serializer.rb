class IngredientSerializer < ActiveModel::Serializer
    attributes :id, :name, :measurement, :mocktail_id
end
  