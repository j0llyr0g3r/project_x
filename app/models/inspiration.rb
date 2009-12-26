class Inspiration < ActiveRecord::Base
  validates_presence_of :user, :idea
  validates_uniqueness_of :user_id, :scope => :idea_id
  belongs_to :user
  belongs_to :idea
end
