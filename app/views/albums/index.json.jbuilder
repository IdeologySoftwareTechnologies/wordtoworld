json.array!(@albums) do |album|
  json.extract! album, :id, :title, :album_cover, :album_type, :status, :admin_id
  json.url album_url(album, format: :json)
end
