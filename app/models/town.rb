class Town < ApplicationRecord
  has_many :users
  belongs_to :county

  has_many :jobs, dependent: :destroy 
  has_many :categorizations
  has_many :preferences, through: :categorizations

  def jobs     
  	Job.where(:town_id => self.id).to_a   
  end
end
