Rails.application.routes.draw do
  resources :activities, only: [:index, :show]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :favorites, only: [:update]
    end
  end


  resources :crags, only: [:index, :create]

  root 'landings#index'
  get '/auth/strava', as: :strava_login
  get '/auth/strava/callback', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/dashboard', to: 'landings#show'
end
