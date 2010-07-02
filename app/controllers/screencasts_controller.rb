class ScreencastsController < ApplicationController
  
  helper_method %w(screencast)
  
  # def index
  #   respond_to do |f|
  #     f.rss { render :xml => Screencast.order('screencasts.number DESC') }
  #   end 
  # end
  
  private
  
  def screencast
    @screencast ||= Screencast.find(params[:id])
  end
  
end