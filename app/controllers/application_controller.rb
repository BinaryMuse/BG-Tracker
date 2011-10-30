class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user

  def authenticate_user
    authenticate_or_request_with_http_basic do |user, pass|
      pass == ENV['HTTP_PASS']
    end
  end
end
