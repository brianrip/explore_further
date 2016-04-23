class Athlete < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :token, presence: true
  validates :uid, presence: true

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
