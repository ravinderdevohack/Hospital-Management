class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :type
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :aadhar_number
      t.string :address
      t.string :salary
      t.date :joining_date
      t.date :resignation_date

      t.timestamps
    end
  end
end
