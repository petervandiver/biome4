json.extract! job, :id, :description, :value, :previous_complete, :this_application, :completed_to_date_percent, :completed_to_date_value, :scope_cycle_id, :created_at, :updated_at
json.url job_url(job, format: :json)