class RemoveDoctorFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_reference :patients, :doctor
    add_reference :patients, :employee
  end
end
