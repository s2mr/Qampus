Rails.application.routes.draw do
  get 'univs/search', as: 'search'
  resources :univs
  devise_for :users
  resources :comments
  resources :posts
  
  root 'univs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
