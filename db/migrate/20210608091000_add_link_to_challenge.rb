class AddLinkToChallenge < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :link, :string
  end
end
