class InsertBasicIngredientsToIngredient < ActiveRecord::Migration[6.1]
  BASIC_INGREDIENTS = [
    { name: 'flour', category: 'cereal' },
    { name: 'cornmeal', category: 'cereal' },
    { name: 'sugar', category: 'other' },
    { name: 'salt', category: 'other' },
    { name: 'baking powder', category: 'other' },
    { name: 'egg', category: 'animal' },
    { name: 'milk', category: 'milk_product' },
    { name: 'vegetable oil', category: 'oil' },
    { name: 'biscuit dough', category: 'cereal' },
    { name: 'cinnamon', category: 'other' },
    { name: 'margarine', category: 'oil' },
    { name: 'walnut', category: 'fruit' },
    { name: 'raisin', category: 'fruit' },
    { name: 'beer', category: 'liquid' },
    { name: 'cubed winter squash', category: 'vegetable' },
    { name: 'water', category: 'liquid' },
    { name: 'banana', category: 'fruit' },
    { name: 'apple', category: 'fruit' },
    { name: 'peer', category: 'fruit' },
    { name: 'pepsi', category: 'liquid' },
    { name: 'yogurt', category: 'milk_product' }
  ].freeze

  def up
    BASIC_INGREDIENTS.each do |ingredient_data|
      next if Ingredient.find_by name: ingredient_data[:name]
      Ingredient.create! ingredient_data
    end
  end

  def down; end
end
