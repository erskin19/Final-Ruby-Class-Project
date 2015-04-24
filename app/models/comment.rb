class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :pet
  validates_presence_of :subject, :body, :user_id, :pet_id
end
