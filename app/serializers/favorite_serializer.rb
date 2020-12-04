class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :mocktail_id, :user_id
    belongs_to :user
    belongs_to :mocktail
end