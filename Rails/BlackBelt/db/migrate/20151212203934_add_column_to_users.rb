class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :groups, :users, :text
  end
end