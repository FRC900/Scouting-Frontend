json.array!(@match_lineitem_values) do |match_lineitem_value|
  json.extract! match_lineitem_value, :id, :match_form_lineitem_id, :value
  json.url match_lineitem_value_url(match_lineitem_value, format: :json)
end
