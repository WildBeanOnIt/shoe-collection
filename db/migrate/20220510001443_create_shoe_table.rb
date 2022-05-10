class CreateShoeTable < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :content
      t.integer :owner_id
    end
  end
end
