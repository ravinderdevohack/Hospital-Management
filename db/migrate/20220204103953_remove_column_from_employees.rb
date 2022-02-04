class RemoveColumnFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :employee_type, :integer
    add_column :employees, :employee_type, :string
    
  end
end
