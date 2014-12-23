json.array!(@match_form_lineitems) do |match_form_lineitem|
  json.extract! match_form_lineitem, :id, :name, :type, :match_category_id, :column_name
  json.url match_form_lineitem_url(match_form_lineitem, format: :json)
end
