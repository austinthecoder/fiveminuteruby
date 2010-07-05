class AddTimestampsToScreencasts < ActiveRecord::Migration
  def self.up
    change_table :screencasts do |t|
      t.timestamps
    end
  end

  def self.down
    change_table :screencasts do |t|
      t.remove :created_at
      t.remove :updated_at
    end
  end
end
