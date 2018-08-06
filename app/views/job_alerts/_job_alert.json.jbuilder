json.extract! job_alert, :id, :name, :email, :phone, :created_at, :updated_at
json.url job_alert_url(job_alert, format: :json)