class Pet < ActiveRecord::Base
  has_many :comments
  has_many :users, :through => :comments
  validates_presence_of :name, :species, :description
end
