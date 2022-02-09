class RemoveDepartmentFromAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_reference :appointments, :department
    add_column :appointments, :symptoms, :integer
  end
end
