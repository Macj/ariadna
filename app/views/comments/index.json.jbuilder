json.array!(@comments) do |comment|
  json.extract! comment, :id, :fio, :service_id, :body
  json.url comment_url(comment, format: :json)
end
