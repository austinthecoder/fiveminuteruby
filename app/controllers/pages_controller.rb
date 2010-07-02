class PagesController < ApplicationController
  
  helper_method %w(screencasts)
  
  def screencasts
    @screencasts ||= Screencast.all
  end
  
end
