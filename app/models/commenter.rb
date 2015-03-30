class Commenter < ActiveRecord::Base
  validates_presence_of :name, :comment
  validate do
    self.errors[:start] << "must be a valid date" unless DateTime.parse(self.start) rescue false
  end
end
