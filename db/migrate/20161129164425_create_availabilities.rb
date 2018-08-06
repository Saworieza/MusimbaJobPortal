class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.string :exp_years
      t.string :industry
      t.string :qualification
      t.integer :sal_expectation
      t.string :currency
      t.string :work_type
      t.string :availability
      t.integer :location_id
      t.integer :job_category_id

      t.timestamps
    end
  end
end
