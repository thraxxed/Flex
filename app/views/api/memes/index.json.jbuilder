json.array! (@memes) do |meme|
  json.extract! meme, :id, :image_url
end
