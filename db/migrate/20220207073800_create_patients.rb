class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.string :sex
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :diseases
      t.belongs_to :doctor
      t.belongs_to :ward

      t.timestamps
    end
  end
end
