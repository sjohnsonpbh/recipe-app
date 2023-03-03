class Recipe < ApplicationRecord 
  has_one_attached :image, :dependent => :destroy
  belongs_to :user
  has_and_belongs_to_many :categories
  validates :title, presence: true, length: {minimum: 2, maximum: 100}
  validates :description, presence: true, length: {minimum: 2, maximum: 300}

  def image_size_300
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def image_size_200
    image.variant(resize_to_limit: [200, 200]).processed
  end

end
