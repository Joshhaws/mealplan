class MealplanMeal < ApplicationRecord
  belongs_to :mealplan, optional: true
  belongs_to :meal, optional: true
end
