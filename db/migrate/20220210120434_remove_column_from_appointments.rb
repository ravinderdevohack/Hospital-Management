class RemoveColumnFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :time
    add_column :appointments, :time, :string
  end
end
