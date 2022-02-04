class UpdateEmployees < ActiveRecord::Migration[7.0]
  def change
      remove_column :employees, :employee_type, :string
    change_table :employees do |t|
      t.change :encrypted_password, :string, default: ''
      t.string :qualification 
      t.string :department
      t.string :specialist
      t.integer :employee_type
    end
  end
end
