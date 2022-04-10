class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :quantity,
    :recipe_id,
    :ingredient_id
  )
end