json.array!(@masters) do |master|
  json.extract! master, :id, :fio, :deserts
  json.url master_url(master, format: :json)
end
