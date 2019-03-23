json.extract! task, :id, :title, :description, :start, :end, :done, :created_at, :updated_at
json.url task_url(task, format: :json)
