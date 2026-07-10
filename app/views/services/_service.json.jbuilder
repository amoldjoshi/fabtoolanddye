json.extract! service, :id, :title, :summary, :content, :slug, :image_filename, :created_at, :updated_at
json.url service_url(service, format: :json)