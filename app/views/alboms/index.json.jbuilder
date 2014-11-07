json.array!(@alboms) do |albom|
  json.extract! albom, :id, :title, :when
  json.url albom_url(albom, format: :json)
end
