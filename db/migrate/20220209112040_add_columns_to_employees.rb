class AddColumnsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :shift_start_at, :datetime
    add_column :employees, :shift_end_at, :datetime

  end
end
