Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, ENV['CLIENT_ID'], ENV['STRAVA_SECRET'], scope: 'view_private,write'
end
