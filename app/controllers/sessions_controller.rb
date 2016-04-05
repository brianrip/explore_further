class SessionsController < ApplicationController

  def create
    if athlete = Athlete.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = athlete.id
    end
    redirect_to dashboard_path
  end

end
