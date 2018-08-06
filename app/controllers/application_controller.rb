class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #layout :layout_by_resource

  #spice it later with login redirect depending on the role of current signed in user
  def after_sign_in_path_for(resource)
     userdash_index_path
  end
  def after_sign_in_path_for(resource_or_scope)
    case resource_or_scope
      when :user, User
        userdash_index_path
      when :employer, Employer
        employerdash_index_path
      else
        super
    end
  end
  
  

  protected
	
	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :second_name, :last_name, :email, :phone, :password, :district_id, :division_id, :location_id, :ward_id, :business_name, :office_line) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password, :first_name, :second_name, :last_name, :physical_address, :phone, :skype, :twitter, :linkedin, :gplus, :business_name, :office_line, :industry, :date_founded, :box, :county_id, :constituency_id, :building, :street, :kra_pin, :nhif_number, :nssf_number, :website, :id_number, :position, :marital_status, :gender, :bio, :date_of_birth, :avatar, :resume, :coverletter, :kcpe, :kcse, :idfront, :idback, :job_category_id, :location_id, :county_id, :constituency_id, :district_id, :division_id, :ward_id, :location_id, :sublocation_id, :village_id, :town_id, educations_attributes: [:id, :institution, :level, :years, :details, :_destroy], works_attributes: [:id, :name, :position, :years, :location, :description, :_destroy], references_attributes: [:id, :name, :company, :position, :email, :phone, :_destroy], projects_attributes: [:id, :name, :client, :date_completed, :contribution, :_destroy], awards_attributes: [:id, :title, :description, :_destroy], availabilities_attributes: [:id, :exp_years, :industry, :qualification, :sal_expectation, :currency, :work_type, :availability, :location_id, :job_category_id, :town_id, :user_id, :_destroy], preferences_attributes: [:id, :job_category_id, :qualification, :town_id, :job_type, :availability, :denomination, :salary], branches_attributes: [:id, :branch_name, :contact_person, :role, :box_number, :size, :phone, :email, :building, :street, :_destroy])}
  end
   

    #def layout_by_resource
     # if devise_controller?
      #  "devise"
      #else
      #  "application"
      #end
    #end

end
