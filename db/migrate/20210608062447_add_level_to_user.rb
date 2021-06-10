class AddLevelToUser < ActiveRecord::Migration[6.1]
  def self.up
    add_column :users, :level, :integer, :default => 1, :null => false
  end
end
