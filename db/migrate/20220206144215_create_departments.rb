class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :name

      t.timestamps
    end
    change_table :appointments do |t|
      t.belongs_to :department
    end

  end
end
