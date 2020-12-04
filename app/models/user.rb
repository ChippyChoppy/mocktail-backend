class User < ApplicationRecord
    has_many :favorites
    has_many :mocktails, through: :favorites
end
