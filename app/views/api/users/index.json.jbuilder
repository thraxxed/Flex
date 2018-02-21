json.array! (@users) do |user|
  json.extract! user, :id
end
