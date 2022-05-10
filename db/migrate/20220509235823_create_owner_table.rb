class CreateOwnerTable < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :email
      t.string :password_digest
    end
  end
end
