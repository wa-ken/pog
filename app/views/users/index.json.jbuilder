json.array!(@users) do |user|
  json.extract! user, :id, :name, :id_num, :pass
  json.url user_url(user, format: :json)
end
