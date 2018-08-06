class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.date :date_completed
      t.integer :contribution

      t.timestamps
    end
  end
end
