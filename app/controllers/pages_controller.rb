class PagesController < ApplicationController
  
  helper_method %w(screencasts)
  
  def screencasts
    @screencasts ||= Screencast.order('screencasts.number DESC')
  end
  
end
