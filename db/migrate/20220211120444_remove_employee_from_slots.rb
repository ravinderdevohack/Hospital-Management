class RemoveEmployeeFromSlots < ActiveRecord::Migration[7.0]
  def change
    remove_reference :slots, :employee
    remove_column :slots, :appointment_booked
  end
end
