require "test_helper"

class IngredientTest < ActiveSupport::TestCase
  test 'can create ingredient with name' do
    assert_difference 'Ingredient.count', 1 do
      Ingredient.create! name: 'banana'
    end
  end

  test 'cannot create ingredient without name' do
    assert_raises ActiveRecord::RecordInvalid do
      Ingredient.create! category: 'fruit'
    end
  end
end
