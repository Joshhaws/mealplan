Rails.application.routes.draw do
  resources :mealplan_meals
  resources :mealplans
  resources :tags
  resources :ingredients
  resources :meals
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/send_to_wunderlist/(:id)', to: 'mealplans#send_to_wunderlist', as: :wunderlist
end
