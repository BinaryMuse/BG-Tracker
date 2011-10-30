class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user

  def authenticate_user
    authenticate_or_request_with_http_basic do |user, pass|
      session[:admin] = true if pass == ENV['HTTP_PASS']
      true
    end
  end

  def authenticate_admin
    redirect_to root_url unless session[:admin] == true
  end
end
