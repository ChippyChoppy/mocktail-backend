class Favorite < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :mocktail, dependent: :destroy
end
