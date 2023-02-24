class AddDetailsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :prep_time_minutes, :string
    add_column :recipes, :cook_time_minutes, :string
  end
end
