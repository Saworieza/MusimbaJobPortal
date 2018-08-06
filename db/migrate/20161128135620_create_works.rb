class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :position
      t.string :years
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
