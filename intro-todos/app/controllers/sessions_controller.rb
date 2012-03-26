class SessionsController < ApplicationController

  def new

  end

  def create
    session[:current_user] = params[:user][:email]
    redirect_to root_path
  end
end
