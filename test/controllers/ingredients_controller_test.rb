require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:salt)
  end

  test "should get index" do
    get ingredients_url, as: :json
    assert_response :success
  end

  test "cannot create ingredient" do
    assert_raises(ActionController::RoutingError) do
      post(
        ingredients_url,
        params: { ingredient: { category: 'fruit', name: 'banana' } },
        as: :json
      )
    end
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient), as: :json
    assert_response :success
  end

  test "cannot update ingredient" do
    assert_raises(ActionController::RoutingError) do
      patch(
        ingredient_url(@ingredient),
        params: { ingredient: { category: 'fruit', name: 'apple' } },
        as: :json
      )
    end
  end

  test "cannot destroy ingredient" do
    assert_raises(ActionController::RoutingError) do
      delete ingredient_url(@ingredient), as: :json
    end
  end
end
