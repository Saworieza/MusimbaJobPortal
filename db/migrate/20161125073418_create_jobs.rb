class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :closes_on
      t.text :details
      t.integer :salary_from
      t.integer :salary_to
      t.string :type
      t.text :responsibilities
      t.text :qualifications

      t.timestamps
    end
  end
end
