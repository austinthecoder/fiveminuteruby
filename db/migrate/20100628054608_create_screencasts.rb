class CreateScreencasts < ActiveRecord::Migration
  def self.up
    create_table :screencasts do |t|
      t.integer :number
      t.string :title
      t.string :url
    end
    add_index :screencasts, :number, :uniq => true
  end

  def self.down
    drop_table :screencasts
  end
end
