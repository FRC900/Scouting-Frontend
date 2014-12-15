json.array!(@data_values) do |data_value|
  json.extract! data_value, :id, :data_id
  json.url data_value_url(data_value, format: :json)
end
