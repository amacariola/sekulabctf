class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :difficulty
      t.string :author
      t.string :platform

      t.timestamps
    end
  end
end
