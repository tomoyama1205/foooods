class Shop < ApplicationRecord
  has_many :users
  has_many   :images
  accepts_nested_attributes_for :images
end
