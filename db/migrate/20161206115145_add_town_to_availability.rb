class AddTownToAvailability < ActiveRecord::Migration[5.0]
  def change
  	add_column :availabilities, :town_id, :integer
  end
end
