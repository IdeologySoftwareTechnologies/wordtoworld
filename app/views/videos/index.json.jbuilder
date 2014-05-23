json.array!(@videos) do |video|
  json.extract! video, :id, :title, :video_file, :status, :admin_id
  json.url video_url(video, format: :json)
end
