json.extract! blog, :id, :title, :headingone, :bodyone, :headingtwo, :bodytwo, :headingthree, :bodythree, :published_at, :slug, :created_at, :updated_at
json.url blog_url(blog, format: :json)
