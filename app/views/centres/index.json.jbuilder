json.array!(@centres) do |centre|
  json.extract! centre, :id
  json.url centre_url(centre, format: :json)
end
