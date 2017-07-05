Rails.application.routes.draw do
  #mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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
