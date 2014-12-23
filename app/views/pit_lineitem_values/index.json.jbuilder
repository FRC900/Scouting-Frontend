json.array!(@pit_lineitem_values) do |pit_lineitem_value|
  json.extract! pit_lineitem_value, :id, :pit_form_lineitem_id, :value
  json.url pit_lineitem_value_url(pit_lineitem_value, format: :json)
end
