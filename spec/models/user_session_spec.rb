require File.dirname(__FILE__) + '/../spec_helper'

describe UserSession do

  include Authlogic::TestCase

  before(:each) do
    activate_authlogic
    @user = Factory(:user)
  end

  it "should create a new instance given valid attributes" do
    UserSession.create(@user).should be_valid
  end

end
