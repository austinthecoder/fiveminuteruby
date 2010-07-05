class ScreencastsController < ApplicationController
  
  helper_method %w(screencast screencasts)
  
  # def index
  #   respond_to do |f|
  #     f.rss { render :xml => Screencast.order('screencasts.number DESC') }
  #   end 
  # end
  
  private
  
  def screencast
    @screencast ||= Screencast.find(params[:id])
  end
  
  def screencasts
    @screencasts ||= Screencast.order("screencasts.created_at DESC")
  end
  
end