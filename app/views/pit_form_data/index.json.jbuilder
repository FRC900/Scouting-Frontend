json.array!(@pit_form_data) do |pit_form_datum|
  json.extract! pit_form_datum, :id, :pit_form_id, :match_id, :competition_team_id, :scouter_id, :filename, :notes
  json.url pit_form_datum_url(pit_form_datum, format: :json)
end
