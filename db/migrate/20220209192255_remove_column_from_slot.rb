class RemoveColumnFromSlot < ActiveRecord::Migration[7.0]
  def change
    remove_reference :slots, :appointment
  end
end
