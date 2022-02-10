class UpdateSlots < ActiveRecord::Migration[7.0]
  def change
    drop_table :slots 
    create_table :slots do |t|
      t.string :appointment_time
      t.belongs_to :appointment
    end
  end
end
