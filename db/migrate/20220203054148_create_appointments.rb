class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.datetime :DateTime
      t.string :speciality
      t.belongs_to :doctor

      t.timestamps
    end
  end
end
