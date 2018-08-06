class JobCategory < ApplicationRecord
	belongs_to :user
	
	has_many :categorizations
    has_many :preferences, through: :categorizations
    
	has_many :jobs, dependent: :destroy

	def jobs
    	Job.where(:job_category_id => self.id).to_a 
  	end
end
