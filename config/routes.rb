Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create, :destroy]

  resources :sellers, only: [:index, :show, :create, :destory]

  resources :users, only: [:index, :create]

  get '/auth/facebook/callback' => 'sessions#face_create'
  get '/settings', to: 'users#settings', as: 'settings'
  get '/users/:id/posts', to: 'users#user_posts', as: 'user_posts'

  root to: 'users#index'

end
