class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin
    redirect_to root_url unless session[:admin] == true
  end
end
