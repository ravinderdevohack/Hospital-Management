class AddDateToSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :date, :date
  end
end
