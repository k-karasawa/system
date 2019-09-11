class AddcolumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :integer, null: false
    add_column :users, :user_name, :string, null: false
    add_column :users, :password, :string, null: false
    add_column :users, :admin, :integer, default: 0
  end
end