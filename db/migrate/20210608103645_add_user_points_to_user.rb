class AddUserPointsToUser < ActiveRecord::Migration[6.1]
  def self.up
    add_column :users, :user_points, :integer, :default => 0, :null => false
  end
end
