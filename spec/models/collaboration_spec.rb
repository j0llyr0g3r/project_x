require 'spec_helper'

describe Collaboration do
  before(:each) do
    @valid_attributes = {
      :idea_id => 1,
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Collaboration.create!(@valid_attributes)
  end
end
