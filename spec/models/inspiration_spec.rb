require 'spec_helper'

describe Inspiration do

  before(:all) do
    @user = Factory(:user)
    @idea = Factory(:idea)
    Factory.create(:inspiration, :user => @user, :idea => @idea)
  end

  it "should create a new instance given valid attributes" do
    Factory.build(:inspiration).should be_valid
  end

  describe "association exists" do
    it ":belongs_to user" do
      Inspiration.new.should respond_to(:user)
    end

    it ":belongs_to idea" do
      Inspiration.new.should respond_to(:idea)
    end
  end

  describe "should not validate" do
    it "without a user" do
      Factory.build(:inspiration, :user => nil).should_not be_valid
    end
    it "without an idea" do
      Factory.build(:inspiration, :idea => nil).should_not be_valid
    end
    it "with duplicate entries" do
      Factory.build(:inspiration, :idea => @idea, :user => @user).should_not be_valid
    end
  end

end
