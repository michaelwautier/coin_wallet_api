Rails.application.routes.draw do
  get 'coins/index'
  get 'coins/show'
  get 'coins/create'
  get 'coins/update'
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'

      resources :wallets, except: [:index]
      resources :coins
    end
  end
end
