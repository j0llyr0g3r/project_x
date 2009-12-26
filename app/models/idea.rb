class Idea < ActiveRecord::Base
  attr_accessible :title, :description
  validates_presence_of :title, :description
  belongs_to :leader, :class_name => 'User'
  has_many :collaborations
  has_many :participants, :through => :collaborations, :class_name => 'User', :source => :user, :uniq => true

  def self.random
    self.find(:all, :offset => rand(self.count()))
  end

end
