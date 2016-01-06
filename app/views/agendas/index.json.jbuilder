json.array!(@agendas) do |agenda|
  json.extract! agenda, :id, :name, :type, :venue, :implementation_date, :created_at, :updated_at
  json.url agenda_url(agenda, format: :json)
end
