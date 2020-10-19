Rails.application.routes.draw do

  get '/auth/facebook/callback' => 'sessions#face_create'
  get '/sellers' => 'sellers#index'

  root to: 'posts#index'

end
