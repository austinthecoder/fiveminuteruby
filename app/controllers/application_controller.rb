class ApplicationController < ActionController::Base
  
  DOMAIN = 'www.fiveminuteruby.com'
  
  include Fiveminuteruby::BasicAuth
  
  protect_from_forgery
  
  layout 'application'
  
  before_filter :ensure_domain
  
  scintillate
  
  private

  def ensure_domain
    redirect_to(DOMAIN) if Rails.env.production? && (request.env['HTTP_HOST'] != DOMAIN)
  end
  
end
