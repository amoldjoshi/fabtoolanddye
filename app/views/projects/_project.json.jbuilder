json.extract! project, :id, :title, :customer, :description, :project_data, :service_id, :image_filename, :created_at, :updated_at
json.url project_url(project, format: :json)