require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:golden_sweet_cornbread)
  end

  test "should get index" do
    get recipes_url, as: :json
    assert_response :success
  end

  test "cannot create recipe" do
    assert_raises(ActionController::RoutingError) do
      post(
        recipes_url,
        params: { recipe: { author: 'AdaLovelace', title: 'Apple Pie' } },
        as: :json
      )
    end
  end

  test "should show recipe" do
    get recipe_url(@recipe), as: :json
    assert_response :success
  end

  test "cannot update recipe" do
    assert_raises(ActionController::RoutingError) do
      patch(
        recipe_url(@recipe),
        params: { recipe: { author: 'AdaLovelace' } },
        as: :json
      )
    end
  end

  test "cannot destroy recipe" do
    assert_raises(ActionController::RoutingError) do
      delete recipe_url(@recipe), as: :json
    end
  end
end
