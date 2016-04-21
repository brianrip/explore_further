# module Omnistub
#   def stub_user
#     OmniAuth.config.test_mode = true
#     OmniAuth.config.mock_auth[:strava] = OmniAuth::AuthHash.new({
#       provider: 'strava',
#         extra: {
#           raw_info: {
#             uid: "1234",
#             firstname: "brian",
#             lastname: "rippeto",
#             profile: "x",
#             email: "rippeto@gmail.com"
#           }
#         },
#       credentials: {
#         token: "montana"
#       }
#     })
#   end
# end
