Rails.application.routes.draw do
  
devise_for :users
root controller: :index, action: :index

resources :events

  namespace :api do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/registrations'
      }
        resources :events, only: [:index], defaults: { format: 'json' }
      end
    end
end
