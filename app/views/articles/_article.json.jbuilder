json.extract! article, :id, :url, :title, :category, :published, :access, :comments_count, :closed, :created_at, :updated_at
json.url article_url(article, format: :json)
