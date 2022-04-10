class Recipe < ApplicationRecord
  has_many :recipe_ingredients

  validates :title, presence: true
end
