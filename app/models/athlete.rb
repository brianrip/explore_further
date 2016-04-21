class Athlete < ActiveRecord::Base

  def self.from_omniauth(auth_info)
    athlete = Athlete.find_or_create_by(uid: auth_info.uid)
    athlete.uid         = auth_info.uid
    athlete.firstname   = auth_info.extra.raw_info.firstname
    athlete.lastname    = auth_info.extra.raw_info.lastname
    athlete.profile     = auth_info.extra.raw_info.profile
    athlete.email       = auth_info.extra.raw_info.email
    athlete.token       = auth_info.credentials.token
    athlete.save
    athlete
  end

end
