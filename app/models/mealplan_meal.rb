class MealplanMeal < ApplicationRecord
  belongs_to :mealpan
  belongs_to :meal
end
