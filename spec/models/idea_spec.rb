require File.dirname(__FILE__) + '/../spec_helper'

describe Idea do

  it "should create a new instance given valid attributes" do
    Factory.build(:idea).should be_valid
  end

  describe "association exists" do
    it ":belongs_to leader" do
      Idea.new.should respond_to(:leader)
    end
    it ":has_many collaborations" do
      Idea.new.should respond_to(:collaborations)
    end
    it ":has_many participants" do
      Idea.new.should respond_to(:participants)
    end
  end

  describe "should not validate" do
    it "without a title" do
      Factory.build(:idea, :title => nil).should_not be_valid
    end
    it "without a description" do
      Factory.build(:idea, :description => nil).should_not be_valid
    end
  end

  describe "method" do
    describe "random" do
      before(:all) do
        5.times do
          Factory(:idea)
        end
      end
      it "should never yield the same collection" do
        Idea.random.should_not eql(Idea.random)
      end
    end

    describe "fetch" do
      it "should yield a collection if keywords are passed as arguments"
    end
  end

end
