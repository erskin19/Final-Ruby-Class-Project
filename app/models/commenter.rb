class Commenter < ActiveRecord::Base
  validates_presence_of :name, :comment
end
