class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.boolean :admin, :default => false, :null => false

      t.timestamps
    end
  end
end
