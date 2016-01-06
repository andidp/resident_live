json.array!(@dues_residents) do |dues_resident|
  json.extract! dues_resident, :id, :resident_id, :type, :year, :for_month, :for_week, :for_date, :amount, :created_at, :updated_at
  json.url dues_resident_url(dues_resident, format: :json)
end
