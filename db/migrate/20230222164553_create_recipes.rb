class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :prep_time
      t.string :cook_time
      t.string :thaw_time
      t.text :ingredients
      t.string :recipe_photo_path, default: "https://static.vecteezy.com/system/resources/thumbnails/004/141/669/small/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg"
      t.integer :user_id

      t.timestamps
    end
  end
end
