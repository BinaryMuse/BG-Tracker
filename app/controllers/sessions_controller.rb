class SessionsController < ApplicationController
  def new
  end

  def create
    session[:admin] = true if params[:session][:password] == ENV['HTTP_PASS']
    redirect_to root_path
  end

  def destroy
    session.delete(:admin)
    redirect_to root_path
  end
end
