class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show ]

  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  def show
    render json: @recipe
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(
        :title,
        :cook_time,
        :prep_time,
        :rating,
        :cuisine,
        :category,
        :author,
        :image_url
      )
    end
end
