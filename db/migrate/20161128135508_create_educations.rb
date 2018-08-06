class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :level
      t.string :years
      t.text :details

      t.timestamps
    end
  end
end
