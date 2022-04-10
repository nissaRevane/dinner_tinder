require "test_helper"

class UserIngredientTest < ActiveSupport::TestCase
  test 'can create ingredient for a user' do
    assert_difference 'UserIngredient.count', 1 do
      UserIngredient.create!(
        quantity: '3 packages',
        ingredient: ingredients(:biscuit_dough)
      )
    end
  end

  test 'cannot create 2 ingredients for the same user' do
    assert_raises ActiveRecord::RecordInvalid do
      UserIngredient.create!(
        quantity: '2 packages',
        ingredient: ingredients(:flour)
      )
    end
  end
end
