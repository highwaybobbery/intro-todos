class ApplicationController < ActionController::Base
  protect_from_forgery
  

  def current_user
    session[:current_user]
  end

  helper_method :current_user

  def signed_in?
    current_user.present?
  end

  helper_method :signed_in?

end
