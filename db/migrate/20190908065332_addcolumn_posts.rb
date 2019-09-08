class AddcolumnPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :last_editor, :string  
  end
end
