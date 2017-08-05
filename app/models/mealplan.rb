class Mealplan < ApplicationRecord
  belongs_to :user
  has_many :meals, through: :mealplan_meals
end
