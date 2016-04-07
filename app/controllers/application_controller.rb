class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_athlete

  def current_athlete
    @current_athlete ||= Athlete.find_by(uid: session[:user_id]) if session[:user_id]
  end

end
