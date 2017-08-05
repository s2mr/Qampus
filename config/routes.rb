Rails.application.routes.draw do
  resources :univs
  devise_for :users
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
