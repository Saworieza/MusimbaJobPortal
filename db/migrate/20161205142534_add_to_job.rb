class AddToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_category_id, :integer 

    #location data
    add_column :jobs, :county_id, :integer
    add_column :jobs, :district_id, :integer
    add_column :jobs, :constituency_id, :integer
    add_column :jobs, :division_id, :integer
    add_column :jobs, :ward_id, :integer
    add_column :jobs, :location_id, :integer
    add_column :jobs, :sublocation_id, :integer
    add_column :jobs, :village_id, :integer
    add_column :jobs, :town_id, :integer

    add_column :searches, :town_id, :integer
  end
end
