class AddToDistrict < ActiveRecord::Migration[5.0]
  def change
    add_column :districts, :user_id, :integer
    add_column :divisions, :user_id, :integer
    add_column :wards, :user_id, :integer
    add_column :counties, :user_id, :integer
    add_column :constituencies, :user_id, :integer
    #add_column :locations, :user_id, :integer
    add_column :sublocations, :user_id, :integer
    add_column :villages, :user_id, :integer
    add_column :towns, :user_id, :integer
    
   
  end
end
