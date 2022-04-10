require "test_helper"

class RecipeIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_ingredients = recipe_ingredients(:golden_sweet_cornbread_salt)
  end

  test "should get index" do
    get recipe_ingredients_url, as: :json
    assert_response :success
  end

  test "cannot create recipe" do
    assert_raises(ActionController::RoutingError) do
      post(
        recipe_ingredients_url,
        params: {
          recipe_ingredients: {
            quantity: '1',
            recipe: recipes(:golden_sweet_cornbread),
            ingredient: ingredients(:biscuit_dough)
          }
        },
        as: :json
      )
    end
  end

  test "should show recipe" do
    get recipe_ingredients_url(@recipe_ingredients), as: :json
    assert_response :success
  end

  test "cannot update recipe" do
    assert_raises(ActionController::RoutingError) do
      patch(
        recipe_url(@recipe_ingredients),
        params: { recipe_ingredients: { author: '5 teaspoon' } },
        as: :json
      )
    end
  end

  test "cannot destroy recipe" do
    assert_raises(ActionController::RoutingError) do
      delete recipe_ingredients_url(@recipe_ingredients), as: :json
    end
  end
end
