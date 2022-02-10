class CreateSyndromes < ActiveRecord::Migration[7.0]
  def change
    create_table :syndromes do |t|
      t.string :name
      t.belongs_to :specialist
      t.timestamps
    end
  end
end
