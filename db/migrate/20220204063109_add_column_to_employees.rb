class AddColumnToEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :type
    add_column :employees, :employee_type, :string
    add_column :employees, :status, :integer, null:false, default:0
  end
end
