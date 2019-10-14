class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
    end
  end
  def up
    create_table :users do |t|
      t.string :username
      t.string :password
    end
  end
end
