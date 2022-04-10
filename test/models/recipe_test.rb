require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  test 'can create recipe with title' do
    assert_difference 'Recipe.count', 1 do
      Recipe.create! title: 'Traditional Layered French Croissants'
    end
  end

  test 'cannot create recipe without title' do
    assert_raises ActiveRecord::RecordInvalid do
      Recipe.create! cook_time: 25, category: 'Yeast Bread'
    end
  end
end
