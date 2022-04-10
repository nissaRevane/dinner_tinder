class RecipeSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :title,
    :cook_time,
    :prep_time,
    :rating,
    :cuisine,
    :category,
    :author,
    :image_url,
    :recipe_ingredient_ids
  )

  def recipe_ingredients_ids
    object.recipe_ingredients.sort
  end
end
