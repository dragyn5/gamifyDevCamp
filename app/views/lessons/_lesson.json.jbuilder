json.extract! lesson, :id, :photo, :title, :subtitle, :body, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
