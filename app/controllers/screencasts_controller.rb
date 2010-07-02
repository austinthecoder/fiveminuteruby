class ScreencastsController < ApplicationController
  
  helper_method %w(screencast)
  
  private
  
  def screencast
    @screencast ||= Screencast.find(params[:id])
  end
  
end