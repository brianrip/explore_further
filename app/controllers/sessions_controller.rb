class SessionsController < ApplicationController

  def create
    if athlete = Athlete.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = athlete.uid
      # session[:_csrf_token]
      redirect_to dashboard_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
