Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :events, only: [:new, :create]

  namespace :api do
      namespace :v1 do
        resources :events, only: [:index], defaults: { format: 'json' }
      end
    end
end
