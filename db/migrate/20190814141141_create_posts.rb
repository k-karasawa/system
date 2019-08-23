class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :license
      t.string :license_name
      t.string :holder_name
      t.date :date_of_license

      t.timestamps
    end
  end
end
