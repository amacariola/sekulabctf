class AddTagToChallenge < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :tag, :string
  end
end
