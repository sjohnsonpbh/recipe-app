class RemoveRecipePhotoPathFromRecipe < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :recipe_photo_path, :image
  end
end
