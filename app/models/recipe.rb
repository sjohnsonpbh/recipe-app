class Recipe < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 100}
  validates :description, presence: true, length: {minimum: 2, maximum: 300}

  validate :recipe_photo_path_exists

  def recipe_photo_path_exists 
    require 'open-uri'

    begin
       # is the URL valid?
      path = URI.open(recipe_photo_path)
      # does the response have a content type image
      errors.add(:recipe_photo_path, "does not contain image content") and return unless path.content_type.starts_with?("image")
    rescue 
      errors.add(:recipe_photo_path, "invalid url")
    end
  end
end
