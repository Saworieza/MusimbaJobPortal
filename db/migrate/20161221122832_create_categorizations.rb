class CreateCategorizations < ActiveRecord::Migration[5.0]
  def change
    create_table :categorizations do |t|
      t.integer :user_id
      t.integer :job_category_id
      t.integer :preference_id
      t.integer :town_id
      
      t.timestamps
    end
    
    add_column :preferences, :categorizations_id, :integer
    add_column :towns, :preference_id, :integer
    add_column :towns, :categorizations_id, :integer
    add_column :job_categories, :preference_id, :integer
    add_column :job_categories, :categorizations_id, :integer
  end
end
