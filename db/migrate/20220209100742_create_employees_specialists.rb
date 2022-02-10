class CreateEmployeesSpecialists < ActiveRecord::Migration[7.0]
  def change
    drop_table :employees_syndromes

    create_table :employees_specialists do |t|
      t.belongs_to :specialist
      t.belongs_to :employee

      t.timestamps
    end
  end
end
