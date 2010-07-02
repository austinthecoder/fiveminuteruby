class AddDescriptionToScreencasts < ActiveRecord::Migration
  def self.up
    change_table :screencasts do |t|
      t.text :description
      t.remove :embed_html
    end
  end

  def self.down
    change_table :screencasts do |t|
      t.text :embed_html
      t.remove :description
    end
  end
end
