class CreateShoeController < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :footware
      t.integer :owner_id
    end
  end
end
