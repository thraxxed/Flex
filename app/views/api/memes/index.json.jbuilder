json.memes do
  @memes.each do |meme|
    json.set! meme.id do
      json.id meme.id
      json.image_url meme.image_url
    end
  end
end
