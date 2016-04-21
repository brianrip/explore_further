module Omnistub
  def stub_user
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:strava] = OmniAuth::AuthHash.new({
      provider: 'strava',
      uid: "1234",
        extra: {
          raw_info: {
            firstname: "Brian",
            lastname: "rippeto",
            profile: "x",
            email: "rippeto@gmail.com"
          }
        },
      credentials: {
        token: "montana"
      }
    })
  end
end
