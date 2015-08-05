json.array!(@parts) do |part|
  json.extract! part, :id, :part_name
  json.url part_url(part, format: :json)
end
