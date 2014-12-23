json.array!(@match_categories) do |match_category|
  json.extract! match_category, :id, :name, :match_form_id
  json.url match_category_url(match_category, format: :json)
end
