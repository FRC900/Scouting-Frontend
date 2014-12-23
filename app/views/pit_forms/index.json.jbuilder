json.array!(@pit_forms) do |pit_form|
  json.extract! pit_form, :id, :name, :competition_id
  json.url pit_form_url(pit_form, format: :json)
end
