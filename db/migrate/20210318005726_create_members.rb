class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
