# frozen_string_literal: true

Rails.application.routes.draw do
  resources :ingredients, only: %i[index show]
  resources :recipe_ingredients, only: %i[index show]
  resources :recipes, only: %i[index show]

  mount_ember_app :frontend, to: "/"
end
