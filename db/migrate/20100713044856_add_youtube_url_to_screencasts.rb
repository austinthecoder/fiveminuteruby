class AddYoutubeUrlToScreencasts < ActiveRecord::Migration
  def self.up
    add_column :screencasts, :youtube_url, :string
  end

  def self.down
    remove_column :screencasts, :youtube_url
  end
end
