class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation, :first_name, :last_name
  acts_as_authentic
  validates_presence_of :login, :email
  validates_uniqueness_of :login, :email

  has_many :leaderships, :through => :inspirations, :class_name => 'Idea', :source => :idea, :uniq => true
  has_many :inspirations

  has_many :memberships, :through => :collaborations, :class_name => 'Idea', :source => :idea, :uniq => true
  has_many :collaborations

  def create_leadership(args)
    leaderships.create(args)
  end

end
