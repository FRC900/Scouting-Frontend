json.array!(@match_forms) do |match_form|
  json.extract! match_form, :id, :name, :competition_id
  json.url match_form_url(match_form, format: :json)
end
