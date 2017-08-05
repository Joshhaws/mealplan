class RemoveColumnMealplan < ActiveRecord::Migration[5.0]
  def change
    remove_column :mealplan_meals, :meal
  end
end
