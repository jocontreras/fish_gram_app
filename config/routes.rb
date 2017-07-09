Rails.application.routes.draw do

root controller: :index, action: :index

resources :events

  namespace :api do
      namespace :v1 do
        resources :events, only: [:index], defaults: { format: 'json' }
      end
    end
end
