Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    namespace :v1 do
      resources :contacts, only: [:index, :show, :create, :update, :destroy]
      resources :home, only: [:index]
    end
  end
end
