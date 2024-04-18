Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/panel', as: 'rails_admin'
  devise_for :admins
  get "up" => "rails/health#show", as: :rails_health_check

  resources :categories
  resources :products
  resources :collections_of_products
end
