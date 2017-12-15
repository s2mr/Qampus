Rails.application.routes.draw do
  get 'univs/search', as: 'search_univs'
  get 'univs/:id/new' => 'posts#new', as: 'new_post'
  get 'univs/:id/search' => 'posts#search', as: 'search_post'
  get 'univs/:id/search/:subject' => 'posts#search', as: 'filter_post'
  resources :univs
  devise_for :users
  resources :comments
  resources :posts, except: [:new, :index]

  get 'users/:id' => 'users#show', as: 'user'
  get 'users' => 'users#mypage', as: 'mypage'

  post   '/comment_likes/:comment_id' => 'comment_likes#like_comment',   as: 'like_comment'
  delete '/comment_likes/:comment_id' => 'comment_likes#unlike_comment', as: 'unlike_comment'

  post   '/post_likes/:post_id' => 'post_likes#like_post',   as: 'like_post'
  delete '/post_likes/:post_id' => 'post_likes#unlike_post', as: 'unlike_post'

  post '/message/:user_id' => 'likes#write', as: 'message'

  root 'univs#index'

  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
