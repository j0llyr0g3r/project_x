require File.dirname(__FILE__) + '/../spec_helper'

describe User do

  before(:all) do
    @user = Factory(:user)
  end

  it "should create a new instance given valid attributes" do
    Factory.build(:user).should be_valid
  end

  describe "association exists" do
    it ":has_many leaderships" do
      User.new.should respond_to(:leaderships)
    end
    it ":has_many inspirations" do
      User.new.should respond_to(:inspirations)
    end
    it ":has_many memberships" do
      User.new.should respond_to(:memberships)
    end
    it ":has_many collaborations" do
      User.new.should respond_to(:collaborations)
    end
  end

  describe "should not validate" do
    it "without a login" do
      Factory.build(:user, :login => nil).should_not be_valid
    end
    it "without an email" do
      Factory.build(:user, :email => nil).should_not be_valid
    end
    it "with duplicate login" do
      Factory.build(:user, :login => @user.login).should_not be_valid
    end
    it "with duplicate email" do
      Factory.build(:user, :email => @user.email).should_not be_valid
    end
  end

end
