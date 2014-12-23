json.array!(@match_form_data) do |match_form_datum|
  json.extract! match_form_datum, :id, :match_form_id, :match_id, :competition_team_id, :scouter_id, :form_comments, :filename, :notes
  json.url match_form_datum_url(match_form_datum, format: :json)
end
