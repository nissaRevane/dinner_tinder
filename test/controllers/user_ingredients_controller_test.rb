require "test_helper"

class UserIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_ingredient = user_ingredients(:user_sugar)
  end

  test "should get index" do
    get user_ingredients_url, as: :json
    assert_response :success
  end

  test "should create user_ingredient" do
    assert_difference('UserIngredient.count') do
      post(
        user_ingredients_url,
        params: {
          user_ingredient: {
            quantity: '2 packages',
            ingredient_id: ingredients(:biscuit_dough).id
          }
        },
        as: :json
      )
    end

    assert_response 201
  end

  test "should show user_ingredient" do
    get user_ingredient_url(@user_ingredient), as: :json
    assert_response :success
  end

  test "should update user_ingredient" do
    patch(
      user_ingredient_url(@user_ingredient),
      params: { user_ingredient: { quantity: '3 teaspoons' } },
      as: :json
    )
    assert_response 200
  end

  test "should destroy user_ingredient" do
    assert_difference('UserIngredient.count', -1) do
      delete user_ingredient_url(@user_ingredient), as: :json
    end

    assert_response 204
  end
end
