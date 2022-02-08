class RemoveDoctorFromAppointments < ActiveRecord::Migration[7.0]
  def change
    drop_table :doctors
    remove_reference :appointments, :doctor
    remove_reference :employees, :ward
    add_reference :appointments, :employee
    add_column :patients, :addmit_date, :datetime
    add_column :patients, :discharge_date, :datetime

  end
end
