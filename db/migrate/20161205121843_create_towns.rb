class CreateTowns < ActiveRecord::Migration[5.0]
  def change
    create_table :towns do |t|
      t.string :name
      t.belongs_to :county, foreign_key: true

      t.timestamps
    end
  end
end
