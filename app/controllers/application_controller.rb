class ApplicationController < ActionController::Base
  
  include Fiveminuteruby::BasicAuth
  
  protect_from_forgery
  
  layout 'application'
  
  scintillate
  
end
