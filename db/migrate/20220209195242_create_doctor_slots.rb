class CreateDoctorSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_slots do |t|
      t.boolean :'10am-11am', default: true
      t.boolean :'11am-12am', default: true
      t.boolean :'12pm-1pm', default: true
      t.boolean :'1pm-2pm', default: true
      t.boolean :'2pm-3pm', default: true
      t.boolean :'3pm-4pm', default: true
      t.boolean :'4pm-5pm', default: true
      t.boolean :'5pm-6pm', default: true


      t.belongs_to :employee
      t.timestamps
    end
  end
end
