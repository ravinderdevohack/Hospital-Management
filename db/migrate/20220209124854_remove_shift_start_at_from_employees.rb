class RemoveShiftStartAtFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :shift_end_at
    remove_column :employees, :shift_start_at
    add_column :employees, :shift_start_at, :time
    add_column :employees, :shift_end_at, :time
  end
end
