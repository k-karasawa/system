class AddcolumnLicenses < ActiveRecord::Migration[5.2]
  def change
    add_column :licenses, :expiration, :string
    add_column :licenses, :surveillance, :string
    add_column :licenses, :S_recommendation, :integer
    add_column :licenses, :J_recommendation, :integer
    add_column :licenses, :last_editor, :string
  end
end
