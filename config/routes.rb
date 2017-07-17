Rails.application.routes.draw do

  root to: "home#index"

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  devise_scope :user do
    authenticated :user do
      root to: 'home#index'
    end
    unauthenticated :user do
      root to: 'devise/registrations#new', as: :unauthenticated_root
    end
  end
#mount_devise_token_auth_for 'User', at: 'auth'

resources :events

  namespace :api do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
        resources :events, only: [:index], defaults: { format: 'json' }
      end
    end
end
