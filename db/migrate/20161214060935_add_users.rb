class AddUsers < ActiveRecord::Migration[5.0]
  def change
  	 add_column :jobs, :user_id, :integer
  	 add_column :job_categories, :user_id, :integer
  	 add_column :companies, :user_id, :integer
  	 add_column :locations, :user_id, :integer
  	 
  	 add_column :educations, :user_id, :integer
  	 add_column :awards, :user_id, :integer
  	 add_column :works, :user_id, :integer
  	 add_column :availabilities, :user_id, :integer
  	 add_column :projects, :user_id, :integer
  	 add_column :references, :user_id, :integer

  	add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :last_name, :string

    #contact data
    add_column :users, :website, :string
    add_column :users, :phone, :integer
    add_column :users, :skype, :string
    add_column :users, :twitter, :string
    add_column :users, :gplus, :string
    add_column :users, :linkedin, :string

    #private life
    add_column :users, :id_number, :string
    add_column :users, :position, :string
    add_column :users, :marital_status, :string
    add_column :users, :gender, :string
    add_column :users, :bio, :text
    add_column :users, :date_of_birth, :date

    #Relations
    add_column :users, :job_category_id, :integer
    add_column :users, :education_id, :integer
    add_column :users, :work_id, :integer
    add_column :users, :reference_id, :integer
    add_column :users, :project_id, :integer
    add_column :users, :award_id, :integer
    
    #location data
    add_column :users, :county_id, :integer
    add_column :users, :district_id, :integer
    add_column :users, :constituency_id, :integer
    add_column :users, :division_id, :integer
    add_column :users, :ward_id, :integer
    add_column :users, :location_id, :integer
    add_column :users, :sublocation_id, :integer
    add_column :users, :village_id, :integer
    add_column :users, :town_id, :integer
  end
end
