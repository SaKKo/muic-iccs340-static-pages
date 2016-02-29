json.array!(@pois) do |poi|
  json.extract! poi, :id, :name, :latitude, :longitude
  json.url poi_url(poi, format: :json)
end
