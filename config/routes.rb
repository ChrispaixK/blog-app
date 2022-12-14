Rails.application.routes.draw do
  devise_for :users, sign_out_via: %i[get post]
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show create new destroy] do
      resources :comments, only: %i[create new destroy]
      resources :likes, only: [:create]
    end
  end
  root to: 'users#index'
end
