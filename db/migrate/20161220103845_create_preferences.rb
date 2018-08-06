class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.integer :job_category_id
      t.string :qualification
      t.string :town_id
      t.string :job_type
      t.string :availability
      t.string :denomination
      t.integer :salary
      t.integer :job_category_id
      t.integer :user_id

      t.timestamps
    end
    add_column :users, :preference_id, :integer
    add_column :branches, :employer_id, :integer
  end
end
