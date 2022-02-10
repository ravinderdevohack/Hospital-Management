class ChangeColumnToDoctorSlots < ActiveRecord::Migration[7.0]
  def change
     change_table :doctor_slots do |t|
      t.remove :'10am-11am'
      t.remove :'11am-12am'
      t.remove :'12pm-1pm'
      t.remove :'1pm-2pm'
      t.remove :'2pm-3pm'
      t.remove :'3pm-4pm'
      t.remove :'4pm-5pm'
      t.remove :'5pm-6pm'

      t.string :slot1
      t.string :slot2
      t.string :slot3
      t.string :slot4
      t.string :slot5
      t.string :slot6
      t.string :slot7
      t.string :slot8
    end
  end
end
