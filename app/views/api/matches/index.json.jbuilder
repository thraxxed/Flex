json.array! (@matches) do |match|
  # json.extract! match, :id, :user1_id
  json.id match.id

  json.user1_id match.user1_id
  json.user1_pic match.user1.picture.url

  json.user2_id match.user2_id
  json.user2_pic match.user2.picture.url
end
