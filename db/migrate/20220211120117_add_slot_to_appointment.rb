class AddSlotToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :slot, :string
  end
end
