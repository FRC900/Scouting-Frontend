json.array!(@pit_form_lineitems) do |pit_form_lineitem|
  json.extract! pit_form_lineitem, :id, :name, :type, :pit_category_id, :column_name
  json.url pit_form_lineitem_url(pit_form_lineitem, format: :json)
end
