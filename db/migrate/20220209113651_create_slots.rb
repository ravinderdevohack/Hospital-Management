class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.datetime :'10am-11am'
      t.datetime :'11am-12am'
      t.datetime :'12pm-1pm'
      t.datetime :'1pm-2pm'
      t.datetime :'2pm-3pm'
      t.datetime :'3pm-4pm'
      t.datetime :'4pm-5pm'
      t.datetime :'5pm-6pm'


      t.belongs_to :employee

      t.timestamps
    end
  end
end
