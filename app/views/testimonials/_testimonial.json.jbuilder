json.extract! testimonial, :id, :auteur, :quotes, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)