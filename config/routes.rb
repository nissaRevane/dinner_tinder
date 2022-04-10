Rails.application.routes.draw do
  resources :ingredients, only: %i[index show]
  resources :recipe_ingredients, only: %i[index show]
  resources :recipes, only: %i[index show]
end
