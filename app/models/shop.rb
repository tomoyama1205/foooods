class Shop < ApplicationRecord
  has_many :reviews
  has_many   :images
  accepts_nested_attributes_for :images
  def review_average
    reviews.average(:rate).round 
  end
end
