class AddcolumnEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :j_code, :integer
    add_column :employees, :name, :string
    add_column :employees, :department, :string
    add_column :employees, :section, :string
    add_column :employees, :join_date, :date
    add_column :employees, :experience, :integer
    add_column :employees, :division, :string
    add_column :employees, :date_of_birth, :date
    add_column :employees, :blood_type, :string
    add_column :employees, :address, :string
    add_column :employees, :phone1, :string
    add_column :employees, :phone2, :string
    add_column :employees, :education, :string
    add_column :employees, :graduation, :date
    add_column :employees, :specified_dpt, :string
  end
end
