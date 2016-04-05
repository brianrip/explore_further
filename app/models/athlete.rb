class Athlete < ActiveRecord::Base

  def self.from_omniauth(auth_info)
    where(id: auth_info[:id]).first_or_create do |new_athlete|
      new_athlete.id                 = auth_info.id
      new_athlete.firstname          = auth_info.extra.raw_info.firstname
      new_athlete.lastname           = auth_info.extra.raw_info.lastname
    end
  end
end
