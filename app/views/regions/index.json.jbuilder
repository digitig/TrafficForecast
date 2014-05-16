json.array!(@regions) do |region|
  json.extract! region, :id, :region_code, :name, :country_id
  json.url region_url(region, format: :json)
end
