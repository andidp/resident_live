json.array!(@categories) do |category|
  json.extract! category, :id, :tite, :description, :created_at, :updated_at
  json.url category_url(category, format: :json)
end
