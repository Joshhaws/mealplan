class Mealplan < ApplicationRecord
  belongs_to :user
  has_many :meals, through: :mealplan_meals
  has_many :mealplan_meals
  accepts_nested_attributes_for :mealplan_meals
end
