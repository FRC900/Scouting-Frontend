json.array!(@scouters) do |scouter|
  json.extract! scouter, :id, :name, :number
  json.url scouter_url(scouter, format: :json)
end
