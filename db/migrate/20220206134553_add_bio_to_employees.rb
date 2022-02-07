class AddBioToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :bio, :string
  end
end
