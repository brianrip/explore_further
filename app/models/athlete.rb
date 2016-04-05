class Athlete < ActiveRecord::Base

  def self.from_omniauth(auth_info)
    where(id: auth_info[:uid]).first_or_create do |new_athlete|
      new_athlete.id                 = auth_info.id
      new_athlete.uid                = auth_info.uid
      new_athlete.firstname          = auth_info.extra.raw_info.firstname
      new_athlete.lastname           = auth_info.extra.raw_info.lastname
      new_athlete.profile            = auth_info.extra.raw_info.profile
      new_athlete.email              = auth_info.extra.raw_info.email
    end
  end
end
