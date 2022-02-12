class AddCloumnUserToPatient < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :user
  end
end
