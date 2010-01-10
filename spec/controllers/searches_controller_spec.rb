require 'spec_helper'

describe SearchesController do

  describe "new action" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "show action" do
    it "should render show template if ideas are found" do
      Idea.stubs(:fetch).returns([Idea.new])
      get 'show'
      response.should render_template(:show)
    end

    it "should render new template if no ideas are found" do
      Idea.stubs(:fetch).returns([])
      get 'show'
      response.should render_template(:new)
    end
  end

end
