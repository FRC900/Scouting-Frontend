json.array!(@match_lineitems) do |match_lineitem|
  json.extract! match_lineitem, :id, :match_form_lineitem_id, :match_form_data_id
  json.url match_lineitem_url(match_lineitem, format: :json)
end
