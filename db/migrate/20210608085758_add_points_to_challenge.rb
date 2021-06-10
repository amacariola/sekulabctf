class AddPointsToChallenge < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :points, :integer
  end
end
