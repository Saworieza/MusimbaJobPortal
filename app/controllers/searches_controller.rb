class SearchesController < ApplicationController
	def new
		@search = Search.new
	end

	def create
		@search = Search.create!(allowed_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
		@job_categs = JobCategory.order("created_at DESC").limit(5)
    @job = Job.order("created_at DESC").limit(3)
	end

	private

	def allowed_params
		params.require(:search).permit!
	end
end
