class AddAppointmentBookedToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :appointment_booked, :boolean, default: false
    add_reference :slots, :employee
  end
end
