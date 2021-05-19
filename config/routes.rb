Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'

  # いいねのルーティング
  post 'like/:id' => 'likes#create', as: 'create_like' # いいねをするとき
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like' # いいねを外すとき
end
