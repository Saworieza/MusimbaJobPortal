class CreateSublocations < ActiveRecord::Migration[5.0]
  def change
    create_table :sublocations do |t|
      t.string :name
      t.belongs_to :ward, foreign_key: true
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
