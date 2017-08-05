class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :quantity
      t.references :meal, foreign_key: true
      t.float :estimated_cost

      t.timestamps
    end
  end
end
