json.array!(@comments) do |comment|
  json.extract! comment, :id, :subject, :body, :user_id, :pet_id
  json.url comment_url(comment, format: :json)
end
