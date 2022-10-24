Rails.application.routes.draw do
  get 'users', to: 'users#index'
  get '/users/:user_id', to: 'users#display'
  get 'users/:user_id/posts', to: 'posts#index'
  get 'users/:users_id/posts/:id', to: 'posts#display'
end
