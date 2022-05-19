class CreateShoesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :footware
      t.string :condition
      t.integer :user_id
    end
  end
end
