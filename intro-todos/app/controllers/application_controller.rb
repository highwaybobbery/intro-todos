class ApplicationController < ActionController::Base
  protect_from_forgery
  

  def current_user
    User.new(session[:current_user])
  end

  helper_method :current_user

  def signed_in?
    current_user.signed_in?
  end

  helper_method :signed_in?

end
