class CreateSpecialists < ActiveRecord::Migration[7.0]
  def change
    create_table :specialists do |t|
      t.string :name

      t.timestamps
    end
  end
end
