json.array!(@countries) do |country|
  json.extract! country, :id, :alpha3, :alpha2, :iso_name, :srs_name, :global_region, :european_route_markets, :eu_member, :oecd_member, :un_member, :economy
  json.url country_url(country, format: :json)
end
