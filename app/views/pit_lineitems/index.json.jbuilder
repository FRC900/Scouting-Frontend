json.array!(@pit_lineitems) do |pit_lineitem|
  json.extract! pit_lineitem, :id, :pit_form_lineitem_id, :pit_form_data_id
  json.url pit_lineitem_url(pit_lineitem, format: :json)
end
