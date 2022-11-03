json.extract! movie, :id, :title, :description, :trailer_url, :created_at, :updated_at
json.url movie_url(movie, format: :json)
