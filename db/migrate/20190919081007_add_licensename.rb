class AddLicensename < ActiveRecord::Migration[5.2]
  def change
    add_column :licenses, :license_name, :string, null: false
  end
end
