json.array! (@messages) do |message|
  json.id message.id
  json.user1_id message.match.user1_id
  json.user2_id message.match.user2_id
  json.body message.body
  json.author_id message.user.id
end
