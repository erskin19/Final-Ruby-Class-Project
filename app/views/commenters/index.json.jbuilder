json.array!(@commenters) do |commenter|
  json.extract! commenter, :id, :name, :comment, :has_cat
  json.url commenter_url(commenter, format: :json)
end
