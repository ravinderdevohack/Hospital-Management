class RemoveSpecialistFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :specialist, :string

    create_table :employees_syndromes, id: false do |t|
      t.belongs_to :employee
      t.belongs_to :specialist
    end
  end


end
