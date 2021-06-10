class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :answer
      t.string :question

      t.timestamps
    end
  end
end
