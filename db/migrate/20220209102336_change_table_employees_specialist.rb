class ChangeTableEmployeesSpecialist < ActiveRecord::Migration[7.0]
  def change
    drop_table :employees_specialists
    create_table :employees_specialists, id:false do |t|
      t.belongs_to :specialist
      t.belongs_to :employee

      t.timestamps
    end
  end
end
