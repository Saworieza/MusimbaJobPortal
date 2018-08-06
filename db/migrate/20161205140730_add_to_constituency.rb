class AddToConstituency < ActiveRecord::Migration[5.0]
  def change
    add_column :wards, :constituency_id, :integer    
    add_column :locations, :constituency_id, :integer
    add_column :districts, :constituency_id, :integer, foreign_key: true
  end
end
