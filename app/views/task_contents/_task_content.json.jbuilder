json.extract! task_content, :id, :task_content, :desired_completion_date, :created_at, :updated_at
json.url task_content_url(task_content, format: :json)
