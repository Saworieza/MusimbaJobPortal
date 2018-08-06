class Employer < ApplicationRecord
   #avatar
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/assets/avatar-1-xl.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :branches, dependent: :destroy 
  has_many :jobs, dependent: :destroy
         
  accepts_nested_attributes_for :branches, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :jobs, reject_if: :all_blank, allow_destroy: true  

         
  def employer_params       
	 params.require(:employer).permit(:email, :business_name, :office_line, :industry, :date_founded, :county_id, :constituency_id, :ward_id, :town_id, :building, :street, :kra_pin, :nhif_number, :nssf_number, :website, :phone, :skype, :twitter, :gplus, :linkedin, :password, :current_password, branches_attributes: [:id, :branch_name, :contact_person, :role, :box_number, :size, :phone, :email, :building, :street, :_destroy])
  end
  
  protected   
  def confirmation_required?     
	  false   
  end
end
