class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :first_name, :last_name
  acts_as_authentic
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :leaderships, :through => :inspirations, :class_name => 'Idea', :source => :idea, :uniq => true
  has_many :inspirations

  has_many :memberships, :through => :collaborations, :class_name => 'Idea', :source => :idea, :uniq => true
  has_many :collaborations
end
