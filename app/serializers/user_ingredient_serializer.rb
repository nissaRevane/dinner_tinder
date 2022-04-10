class UserIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :ingredient_id
end
