class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.integer :job_category_id
      #t.integer :location_id

      t.timestamps
    end
  end
end
