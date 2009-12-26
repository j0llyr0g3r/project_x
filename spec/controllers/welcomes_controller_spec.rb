require 'spec_helper'

describe WelcomesController do

  describe "show action" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
  describe "join action" do
    it "should be successful" do
      get 'join'
      response.should be_success
    end
  end
end
