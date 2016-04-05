Rails.application.routes.draw do
  root 'landings#index'
  get '/auth/strava', as: :strava_login
  get '/auth/strava/callback', to: "sessions#create"
end
