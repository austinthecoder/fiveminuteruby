class PagesController < ApplicationController
  
  helper_method %w(screencasts)
  
  def index
    msg "Welcome to FiveMinuteRuy! This is a brand new site with lots of screencasts to come!"
  end
  
  private
  
  def screencasts
    @screencasts ||= Screencast.order('screencasts.number DESC')
  end
  
end
