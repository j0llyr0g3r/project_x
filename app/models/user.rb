class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :first_name, :last_name
  acts_as_authentic
  validates_uniqueness_of :username, :email
end
