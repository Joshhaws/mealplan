class CreateMealplanMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :mealplan_meals do |t|
      t.integer :meal
      t.references :mealpan, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
