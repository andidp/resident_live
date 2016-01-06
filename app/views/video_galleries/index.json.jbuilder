json.array!(@video_galleries) do |video_gallery|
  json.extract! video_gallery, :id, :album_id, :title, :video, :description, :created_at, :updated_at
  json.url video_gallery_url(video_gallery, format: :json)
end
