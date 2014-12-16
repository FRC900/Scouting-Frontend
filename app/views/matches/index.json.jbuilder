json.array!(@matches) do |match|
  json.extract! match, :id, :number, :competition_id
  json.url match_url(match, format: :json)
end
