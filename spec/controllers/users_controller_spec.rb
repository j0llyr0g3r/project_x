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

    it "should redirect to 'create idea' when model is valid and session is set accordingly" do
      User.any_instance.stubs(:valid?).returns(true)
      post :create
      response.should redirect_to(new_idea_path())
    end

  end

  describe "edit action" do
    it "should render edit template" do
      login(@user)
      get :edit, :id => @user
      response.should render_template(:edit)
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

  end
end
