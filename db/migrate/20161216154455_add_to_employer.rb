class AddToEmployer < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :business_name, :string
    add_column :employers, :office_line, :string
    add_column :employers, :industry, :string
    add_column :employers, :date_founded, :date
    add_column :employers, :box, :string
    
    #location data
    add_column :employers, :county_id, :integer
    add_column :employers, :constituency_id, :integer
    add_column :employers, :ward_id, :integer
    add_column :employers, :town_id, :integer
    add_column :employers, :building, :string
    add_column :employers, :street, :string
    
    #Regulatory Info
    add_column :employers, :kra_pin, :string
    add_column :employers, :nhif_number, :string
    add_column :employers, :nssf_number, :string
    
    #contact data
    add_column :employers, :website, :string
    add_column :employers, :phone, :integer
    add_column :employers, :skype, :string
    add_column :employers, :twitter, :string
    add_column :employers, :gplus, :string
    add_column :employers, :linkedin, :string
    
    #Branches
    add_column :employers, :branch_id, :integer
  end
end
