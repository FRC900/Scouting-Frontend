json.array!(@pit_categories) do |pit_category|
  json.extract! pit_category, :id, :name, :pit_form_id
  json.url pit_category_url(pit_category, format: :json)
end
