class ApplicationController < ActionController::Base
  
  before_filter :authenticate, :if => lambda { Rails.env.staging? }
  
  protect_from_forgery
  
  layout 'application'
  
  scintillate
  
  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "foo" && password == "bar"
    end
  end
  
end
