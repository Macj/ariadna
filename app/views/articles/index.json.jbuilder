json.array!(@articles) do |article|
  json.extract! article, :id, :name, :short_desc, :desc
  json.url article_url(article, format: :json)
end
