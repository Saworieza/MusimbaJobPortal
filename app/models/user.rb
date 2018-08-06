class User < ApplicationRecord
  #before_create :confirmation_token
  belongs_to :district
  belongs_to :division
  belongs_to :ward
  belongs_to :location
  belongs_to :sublocation
  belongs_to :town
  belongs_to :village
  
  #avatar
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/assets/avatar-1-xl.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  #idfront
  has_attached_file :idfront, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/assets/avatar-1-xl.png"
  validates_attachment_content_type :idfront, content_type: /\Aimage\/.*\z/
  #idback
  has_attached_file :idback, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/assets/avatar-1-xl.png"
  validates_attachment_content_type :idback, content_type: /\Aimage\/.*\z/
  
  
  
  
  devise :database_authenticatable, :registerable,          
  :recoverable, :rememberable, :trackable, :validatable   

  #can and can
  #load_and_authorize_resource

  has_many :jobs, dependent: :destroy
  has_many :job_categories, dependent: :destroy
  has_many :companies, dependent: :destroy

  has_many :counties, dependent: :destroy
  has_many :constituencies, dependent: :destroy
  
  has_many :districts, dependent: :destroy
  
  has_many :divisions, dependent: :destroy
  has_many :wards, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :sublocations, dependent: :destroy
  has_many :villages, dependent: :destroy
  has_many :towns, dependent: :destroy

  has_many :educations, dependent: :destroy   
  has_many :works, dependent: :destroy
  has_many :references, dependent: :destroy
  has_many :projects, dependent: :destroy 
  has_many :awards, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many :preferences, dependent: :destroy
  
  accepts_nested_attributes_for :jobs, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :job_categories, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :companies, reject_if: :all_blank, allow_destroy: true  

  accepts_nested_attributes_for :counties, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :constituencies, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :districts, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :divisions, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :wards, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :sublocations, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :villages, reject_if: :all_blank, allow_destroy: true 
  accepts_nested_attributes_for :towns, reject_if: :all_blank, allow_destroy: true 

  accepts_nested_attributes_for :educations, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :works, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :references, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :awards, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :availabilities, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :preferences, reject_if: :all_blank, allow_destroy: true 

  #group users into male and female
  def self.total_males
    where(gender: 'male').count
  end
  def self.total_females
    where(gender: 'female').count
  end

  def user_params       
	  params.require(:user).permit(:email, :password, :current_password, :first_name, :second_name, :last_name, :physical_address, :website, :phone, :skype, :twitter, :linkedin, :gplus, :id_number, :position, :marital_status, :gender, :bio, :date_of_birth, :avatar, :resume, :coverletter, :kcpe, :kcse, :idfront, :idback, :job_category_id, :location_id, :county_id, :constituency_id, :district_id, :division_id, :ward_id, :location_id, :sublocation_id, :village_id, :town_id, educations_attributes: [:id, :institution, :level, :years, :details, :_destroy], works_attributes: [:id, :name, :position, :years, :location, :description, :_destroy], references_attributes: [:id, :name, :company, :position, :email, :phone, :_destroy], projects_attributes: [:id, :name, :client, :date_completed, :contribution, :_destroy], awards_attributes: [:id, :title, :description, :_destroy], availabilities_attributes: [:id, :exp_years, :industry, :qualification, :sal_expectation, :currency, :work_type, :availability, :location_id, :job_category_id, :town_id, :user_id, :_destroy], preferences_attributes: [:id, :job_category_id, :qualification, :town_id, :job_type, :availability, :denomination, :salary])   
  end  

  #enum role: [:admin, :candidate, :employer]
  #private
  #def confirmation_token
  #  if self.confirm_token.blank?
  #    self.confirm_token = SecureRandom.urlsafe_base64.to_s
  #  end
  #end

  protected   
  def confirmation_required?     
	  false   
  end
end