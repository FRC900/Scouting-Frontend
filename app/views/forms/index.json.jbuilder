json.array!(@forms) do |form|
  json.extract! form, :id, :name, :year
  json.url form_url(form, format: :json)
end
