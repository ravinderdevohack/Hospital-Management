class RemoveDatetimeFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :DateTime
    add_column :appointments, :date, :date
    add_column :appointments, :time, :time
    add_column :appointments, :age, :string
  end
end
