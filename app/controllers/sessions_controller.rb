class SessionsController < ApplicationController

  def create
    render text: request.env["omniauth.auth"].inspect
  #   if athlete = Athlete.from_omniauth(request.env["omniauth.auth"])
  #     session[:user_id] = athlete.id
  #   end
  #   redirect_to dashboard_path
  end
  #
end
