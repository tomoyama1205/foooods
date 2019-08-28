class Review < ApplicationRecord
  validates :review,
    length: { minimum: 1, maximum: 50 }
  belongs_to :shop
  belongs_to :user
end
