class ChangeName < ActiveRecord::Migration
  def change
    rename_column :catches, :type, :image
  end
end
