class AddEmbedHtmlToScreencasts < ActiveRecord::Migration
  def self.up
    add_column :screencasts, :embed_html, :text
  end

  def self.down
    remove_column :screencasts, :embed_html
  end
end
