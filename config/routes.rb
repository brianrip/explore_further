Rails.application.routes.draw do
  resources :activities, only: [:index, :show]
  resources :crags, only: [:index, :create]

  root 'landings#index'
  get '/auth/strava', as: :strava_login
  get '/auth/strava/callback', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/dashboard', to: 'landings#show'
end
