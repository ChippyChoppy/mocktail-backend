class Mocktail < ApplicationRecord
    has_many :ingredients, dependent: :destroy 
    has_many :favorites
    has_many :users, through: :favorites
end
