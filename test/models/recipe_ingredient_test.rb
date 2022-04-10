require "test_helper"

class RecipeIngredientTest < ActiveSupport::TestCase
  test 'can create ingredient for a recipe' do
    assert_difference 'RecipeIngredient.count', 1 do
      RecipeIngredient.create!(
        quantity: '3 packages',
        ingredient: ingredients(:biscuit_dough),
        recipe: recipes(:golden_sweet_cornbread)
      )
    end
  end

  test 'cannot create 2 ingredient for the same recipe' do
    assert_raises ActiveRecord::RecordInvalid do
      RecipeIngredient.create!(
        ingredient: ingredients(:flour),
        recipe: recipes(:golden_sweet_cornbread)
      )
    end
  end
end
