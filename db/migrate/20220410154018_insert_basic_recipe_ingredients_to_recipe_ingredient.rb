class InsertBasicRecipeIngredientsToRecipeIngredient < ActiveRecord::Migration[6.1]
  def up
    basic_recipe_ingredients.each do |recipe_ingredient_data|
      next unless recipe_ingredient_data[:ingredient_id]
      next unless recipe_ingredient_data[:recipe_id]
      next if recipe_ingredient recipe_ingredient_data

      RecipeIngredient.create! recipe_ingredient_data
    end
  end

  def down; end

  private

  def recipe_ingredient(recipe_ingredient_data)
    RecipeIngredient.find_by(
      ingredient_id: recipe_ingredient_data[:ingredient_id],
      recipe_id: recipe_ingredient_data[:recipe_id]
    )
  end

  # Recipes

  def golden_sweet_cornbread_id
    Recipe.find_by(title: 'Golden Sweet Cornbread').id
  end

  def monkey_bread_id
    Recipe.find_by(title: 'Monkey Bread I').id
  end

  def whole_wheat_beer_bread_id
    Recipe.find_by(title: 'Whole Wheat Beer Bread').id
  end

  # Ingredients

  def flour_id
    Ingredient.find_by(name: 'flour').id
  end

  def cornmeal_id
    Ingredient.find_by(name: 'cornmeal').id
  end

  def sugar_id
    Ingredient.find_by(name: 'sugar').id
  end

  def salt_id
    Ingredient.find_by(name: 'salt').id
  end

  def baking_powder_id
    Ingredient.find_by(name: 'baking powder').id
  end

  def egg_id
    Ingredient.find_by(name: 'egg').id
  end

  def milk_id
    Ingredient.find_by(name: 'milk').id
  end

  def vegetable_oil_id
    Ingredient.find_by(name: 'vegetable oil').id
  end

  def biscuit_dough_id
    Ingredient.find_by(name: 'biscuit dough').id
  end

  def cinnamon_id
    Ingredient.find_by(name: 'cinnamon').id
  end

  def margarine_id
    Ingredient.find_by(name: 'margarine').id
  end

  def walnut_id
    Ingredient.find_by(name: 'walnut').id
  end

  def raisin_id
    Ingredient.find_by(name: 'raisin').id
  end

  def beer_id
    Ingredient.find_by(name: 'beer').id
  end

  # recipe ingredients

  def basic_recipe_ingredients
    [
      {
        quantity: '1 cup',
        ingredient_id: flour_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '1 cup',
        ingredient_id: cornmeal_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '2/3 cup',
        ingredient_id: sugar_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '1 teaspoon',
        ingredient_id: salt_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '1',
        ingredient_id: egg_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '3 and 1/2 teaspoons',
        ingredient_id: baking_powder_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '1',
        ingredient_id: egg_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '1 cup',
        ingredient_id: milk_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '2/3 cup',
        ingredient_id: vegetable_oil_id,
        recipe_id: golden_sweet_cornbread_id
      },
      {
        quantity: '3 packages',
        ingredient_id: biscuit_dough_id,
        recipe_id: monkey_bread_id
      },
      {
        quantity: '1 cup',
        ingredient_id: sugar_id,
        recipe_id: monkey_bread_id
      },
      {
        quantity: '2 teaspoons',
        ingredient_id: cinnamon_id,
        recipe_id: monkey_bread_id
      },
      {
        quantity: '1/2 cup',
        ingredient_id: margarine_id,
        recipe_id: monkey_bread_id
      },
      {
        quantity: '1/2 cup',
        ingredient_id: walnut_id,
        recipe_id: monkey_bread_id
      },
      {
        quantity: '1/2 cup',
        ingredient_id: raisin_id,
        recipe_id: monkey_bread_id
      },
      {
        quantity: '3 cup',
        ingredient_id: flour_id,
        recipe_id: whole_wheat_beer_bread_id
      },
      {
        quantity: '4 and 1/2 teaspoons',
        ingredient_id: baking_powder_id,
        recipe_id: whole_wheat_beer_bread_id
      },
      {
        quantity: '1 and 1/2 teaspoons',
        ingredient_id: salt_id,
        recipe_id: whole_wheat_beer_bread_id
      },
      {
        quantity: '2/3 cup',
        ingredient_id: sugar_id,
        recipe_id: whole_wheat_beer_bread_id
      },
      {
        quantity: '1 bottle',
        ingredient_id: beer_id,
        recipe_id: whole_wheat_beer_bread_id
      },
    ]
  end
end
