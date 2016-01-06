json.array!(@residents) do |resident|
  json.extract! resident, :id, :parent_id, :name, :phone, :address, :job_status, :home_number, :created_at, :updated_at
  json.url resident_url(resident, format: :json)
end
