json.extract! task, :id, :user_id, :reception_date, :task_content, :number_of_requests, :desired_completion_date, :created_at, :updated_at
json.url task_url(task, format: :json)
