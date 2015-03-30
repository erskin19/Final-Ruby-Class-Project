json.array!(@commenters) do |commenter|
  json.extract! commenter, :id, :name, :comment, :has_cat, :created
  json.url commenter_url(commenter, format: :json)
end
