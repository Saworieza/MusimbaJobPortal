json.extract! job, :id, :title, :closes_on, :details, :salary_from, :type, :salary_to, :responsibilities, :qualifications, :created_at, :updated_at
json.url job_url(job, format: :json)