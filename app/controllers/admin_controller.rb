class AdminController < ApplicationController
  def login
    authenticate_or_request_with_http_basic do |user, pass|
      session[:admin] = true if pass == ENV['HTTP_PASS']
    end
    redirect_to root_path
  end

  def logout
    session.delete(:admin)
    redirect_to root_path
  end
end
