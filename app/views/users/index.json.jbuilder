json.array!(@users) do |user|
  json.extract! user, :id, :email, :username, :crypted_password, :salt, :role_id
  json.url user_url(user, format: :json)
end
