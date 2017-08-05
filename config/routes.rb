Rails.application.routes.draw do
  resources :mealplan_meals
  resources :mealplans
  resources :tags
  resources :ingredients
  resources :meals
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
