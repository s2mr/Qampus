Rails.application.routes.draw do
  get 'univs/search', as: 'search_univs'
  get 'univs/:id/new' => 'posts#new', as: 'new_post'
  get 'univs/:id/search' => 'posts#search', as: 'search_post'
  get 'univs/:id/search/:subject' => 'posts#search', as: 'filter_post'
  resources :univs
  devise_for :users
  resources :comments
  resources :posts, except: [:new]

  get 'users/:id' => 'users#show', as: 'user'

  post   '/like/:comment_id' => 'likes#like',   as: 'like'
  delete '/like/:comment_id' => 'likes#unlike', as: 'unlike'

  post '/message/:user_id' => 'likes#write', as: 'message'

  root 'univs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
