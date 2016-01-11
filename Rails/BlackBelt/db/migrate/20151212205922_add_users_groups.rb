class AddUsersGroups < ActiveRecord::Migration
  def self.up
    create_table :users_groups, :id => false do |t|
      t.integer :user_id
      t.integer :group_id
    end
  end

  def self.down
    drop_table :categories_items
  end
end
