class UserdashController < ApplicationController
  layout false
  #layout 'userdash'

  def index
  	@jobs = Job.all.order('created_at DESC')
  	@job_months = @jobs.group_by { |t| t.closes_on.beginning_of_month }
  end
end
