class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_athlete, :activities

  def current_athlete
    @current_athlete ||= Athlete.find_by(uid: session[:user_id]) if session[:user_id]
  end

  def activities
    @activities ||= Activity.build_activities(ActivityService.new(current_athlete.token)
    .activities)
  end
end
