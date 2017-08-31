Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  devise_for :users

  #Comments
  get '/post/show/:post_id' =>'posts#show'
  post '/posts/show/:post_id/comments/create' => 'comment#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
