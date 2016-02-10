json.array!(@songs) do |song|
  json.extract! song, :id, :name, :genre, :duration
  json.url song_url(song, format: :json)
end
