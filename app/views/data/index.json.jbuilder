json.array!(@data) do |datum|
  json.extract! datum, :id, :data_type_id, :form_data_id
  json.url datum_url(datum, format: :json)
end
