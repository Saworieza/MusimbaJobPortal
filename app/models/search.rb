class Search < ApplicationRecord
	def jobs
		@jobs = find_jobs
	end

	private

	def find_jobs
		jobs = Job.order('created_at DESC')
		jobs = jobs.where(job_category_id: job_category_id) if job_category_id.present?
		jobs = jobs.where(town_id: town_id) if town_id.present?
		jobs
	end
end
