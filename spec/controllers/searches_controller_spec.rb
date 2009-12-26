require 'spec_helper'

describe SearchesController do

  #Delete these examples and add some real ones
  it "should use SearchesController" do
    controller.should be_an_instance_of(SearchesController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
end
