class AddDateToDoctorSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :doctor_slots, :date, :date
  end
end
