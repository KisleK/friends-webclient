Rails.application.routes.draw do
  get '/' => 'friends#index'
  get '/friends' => 'friends#index'

  get '/friends/new' => 'friends#new'
  get '/friends/:id' => 'friends#show'
end
