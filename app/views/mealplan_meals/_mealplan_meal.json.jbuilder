json.extract! mealplan_meal, :id, :meal, :mealplan_id, :meal_id, :created_at, :updated_at
json.url mealplan_meal_url(mealplan_meal, format: :json)
