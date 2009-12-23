require File.dirname(__FILE__) + '/../spec_helper'
 
describe UsersController do
  fixtures :all
  integrate_views

  before(:all) do
    @user = Factory.create(:user)
  end

  describe "create action" do
    it "should redirect to sign up page when model is invalid" do
      User.any_instance.stubs(:valid?).returns(false)
      post :create
      response.should redirect_to(join_welcome_path)
    end

    it "should redirect to profile page when model is valid" do
      User.any_instance.stubs(:valid?).returns(true)
      post :create
      response.should redirect_to(edit_user_path(:current))
    end

    xit "should redirect to referrer when user is logged in" do
      # TODO how do i stub the current_user method so that it returns a user?
      post :create
      #response.should redirect_to(root_url)
    end
  end

  describe "edit action" do
    it "should render edit template" do
      login(@user)
      get :edit, :id => @user
      response.should render_template(:edit)
    end

    it "should redirect if user is not logged in" do
      get :edit, :id => @user
      response.should be_redirect
    end
  end

  describe "update action" do
    it "should render edit template when model is invalid" do
      login(@user)
      User.any_instance.stubs(:valid?).returns(false)
      put :update, :id => @user
      response.should render_template(:edit)
    end

    it "should render edit template when model is valid" do
      login(@user)
      User.any_instance.stubs(:valid?).returns(false)
      put :update, :id => @user
      response.should render_template(:edit)
    end

    it "should redirect if user is not logged in" do
      put :update, :id => @user
      response.should be_redirect
    end
  end
end
