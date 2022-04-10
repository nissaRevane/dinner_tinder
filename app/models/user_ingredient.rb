class UserIngredient < ApplicationRecord
  belongs_to :ingredient

  validates :ingredient_id, uniqueness: true
end
