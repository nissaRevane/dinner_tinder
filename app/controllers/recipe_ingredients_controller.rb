class RecipeIngredientsController < ApplicationController
  before_action :set_recipe_ingredient, only: %i[ show ]

  def index
    @recipe_ingredients = RecipeIngredient.all
    render json: @recipe_ingredients
  end

  def show
    render json: @recipe_ingredient
  end

  private
  def set_recipe_ingredient
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end

  def recipe_ingredient_params
    params.require(:recipe_ingredient)
          .permit(:quantity, :recipe_id, :ingredient_id)
  end
end
