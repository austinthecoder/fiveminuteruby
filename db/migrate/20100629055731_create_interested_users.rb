class CreateInterestedUsers < ActiveRecord::Migration
  def self.up
    create_table :interested_users do |t|
      t.string :email
    end
    add_index :interested_users, :email, :uniq => true
  end

  def self.down
    drop_table :interested_users
  end
end
