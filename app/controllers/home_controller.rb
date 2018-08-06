class HomeController < ApplicationController
  def index
  	@job_categories = JobCategory.all
  end
end
