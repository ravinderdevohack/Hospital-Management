class AddDepartmentToEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :department
    add_reference  :employees, :departments
  end
end
