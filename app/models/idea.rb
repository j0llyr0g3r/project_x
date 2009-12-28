class Idea < ActiveRecord::Base
  attr_accessible :title, :description
  validates_presence_of :title, :description
  belongs_to :leader, :class_name => 'User'
  has_many :collaborations
  has_many :participants, :through => :collaborations, :class_name => 'User', :source => :user, :uniq => true

  define_index do
    indexes :title, :sortable => true
    indexes :description
    has created_at, updated_at
  end


  def self.fetch(options = {})
    if options[:keywords]
      search(options[:keywords])
    else
      find(:all)
    end
  end

  def self.random
    # TODO find more efficient implementation
    find(:all, :order => "RAND()", :limit => DISPLAY_LIMIT)
  end

end
