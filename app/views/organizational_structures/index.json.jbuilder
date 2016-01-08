json.array!(@organizational_structures) do |organizational_structure|
  json.extract! organizational_structure, :id, :name, :description, :created_at, :updated_at
  json.url organizational_structure_url(organizational_structure, format: :json)
end
