json.extract! ingredient, :id, :name, :quantity, :meal_id, :estimated_cost, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)