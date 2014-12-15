json.array!(@form_data) do |form_datum|
  json.extract! form_datum, :id, :form_id, :match_number, :team_id, :scouter_id, :comments
  json.url form_datum_url(form_datum, format: :json)
end
