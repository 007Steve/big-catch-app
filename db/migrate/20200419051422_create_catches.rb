class CreateCatches < ActiveRecord::Migration
  def change
    create_table :catches do |t|
      t.string :name
      t.string :type
      t.integer :length
      t.integer :weight 
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
