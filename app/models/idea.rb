class Idea < ActiveRecord::Base
  attr_accessible :title, :description
  validates_presence_of :title, :description
  belongs_to :leader, :class_name => 'User'
  has_many :collaborations
  #has_many :members, :through => :collaborations, :class_name => 'User', :source => :user
  has_many :users, :through => :collaborations

  def self.random
    self.find(:all, :offset => rand(self.count()))
  end

end
