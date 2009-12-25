class Idea < ActiveRecord::Base
  attr_accessible :title, :description
  validates_presence_of :title, :description
  belongs_to :user

  def self.random
    self.find(:all, :offset => rand(self.count()))
  end

end
