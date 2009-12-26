require 'spec_helper'

describe SearchesController do

  describe "show action" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end
