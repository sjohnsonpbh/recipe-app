class CreateCategoriesRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_recipes do |t|
      t.integer :recipe_id, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
