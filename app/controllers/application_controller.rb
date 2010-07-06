class ApplicationController < ActionController::Base
  
  include Fiveminuteruby::BasicAuth, Fiveminuteruby::EnsureWww
  
  protect_from_forgery
  
  layout 'application'
  
  scintillate
  
end
