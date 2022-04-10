class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[ show ]

  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :category)
    end
end
