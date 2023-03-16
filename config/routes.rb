Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  resources :contacts, only: [:index, :show, :create, :update, :destroy]
end
