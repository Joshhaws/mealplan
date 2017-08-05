class Meal < ApplicationRecord
  has_many :tags
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :tags
end
