json.array!(@competitions_match_forms) do |competitions_match_form|
  json.extract! competitions_match_form, :id, :competition_id, :match_form_id
  json.url competitions_match_form_url(competitions_match_form, format: :json)
end
