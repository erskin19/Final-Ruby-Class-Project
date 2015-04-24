class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email
  has_many :comments
  has_many :pets, :through => :comments
end
