module Omnistub
  def stub_athlete
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:strava] = OmniAuth::AuthHash.new({
      provider: 'strava',
      uid: "6032950",
        extra: {
          raw_info: {
            firstname: "Brian",
            lastname: "rippeto",
            profile: "x",
            email: "rippeto@gmail.com"
          }
        },
      credentials: {
        token: ENV['ATHLETE_TOKEN']
      }
    })
  end
end
