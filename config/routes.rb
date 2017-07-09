Rails.application.routes.draw do

mount_devise_token_auth_for 'User', at: 'auth'

root controller: :index, action: :index

resources :events

  namespace :api do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
        resources :events, only: [:index], defaults: { format: 'json' }
      end
    end
end
