json.array!(@competitions_pit_forms) do |competitions_pit_form|
  json.extract! competitions_pit_form, :id, :competition_id, :pit_form_id
  json.url competitions_pit_form_url(competitions_pit_form, format: :json)
end
