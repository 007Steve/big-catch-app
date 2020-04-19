class CreateUserTable < ActiveRecord::Migration
  def change
    Create_table : users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
  end
end
