Rails.application.routes.draw do
  get 'univs/search', as: 'search_univs'
  resources :univs
  get 'univs/:id/search' => 'posts#search', as: 'search_posts'
  devise_for :users
  resources :comments
  resources :posts

  get 'users/:id' => 'users#show', as: 'user' 

  root 'univs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
