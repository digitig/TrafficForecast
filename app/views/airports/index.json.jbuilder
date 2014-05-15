json.array!(@airports) do |airport|
  json.extract! airport, :id, :code, :name, :city, :state, :latitude, :longitude, :wac, :notes, :country_id
  json.url airport_url(airport, format: :json)
end
