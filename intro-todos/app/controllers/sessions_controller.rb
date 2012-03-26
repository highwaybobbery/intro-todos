class SessionsController < ApplicationController

  def new

  end

  def create
    session[:current_user] = params[:user][:email]
    redirect_to todos_path
  end

  def destroy
    session[:current_user] = nil
    redirect_to root_path
  end
end
