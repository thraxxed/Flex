json.array! (@users) do |user|
  # json.extract! user, :id, :username, :bio, :age,
  json.id user.id
  json.username user.username
  json.bio user.bio
  json.age user.age
  json.picture_url user.picture.url
end
