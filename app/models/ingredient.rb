class Ingredient < ApplicationRecord
  belongs_to :meal, optional: true
end
