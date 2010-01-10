require File.dirname(__FILE__) + '/../spec_helper'
 
describe UsersController do

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
      session[:redirect_controller] = 'ideas'
      session[:redirect_action] = 'new'
      User.any_instance.stubs(:valid?).returns(true)
      post :create
      response.should redirect_to(new_idea_path())
    end
  end

  describe "edit action" do

    it "should redirect to join-page if not logged in" do
      get :edit, :id => "1"
       response.should redirect_to(join_welcome_path)
    end

    it "should render edit template" do
      we_are_logged_in
      #@current_user
      get :edit, :id => "1"
      response.should render_template(:edit)
    end
  end

  describe "update action" do

    it "should render the signup-page if not logged in" do
      put :update, :id => "1"
      response.should redirect_to(join_welcome_path)
    end

    it "should render edit template when model is invalid" do
      we_are_logged_in
      User.any_instance.stubs(:update_attributes).returns(false)
      put :update, :id => "1"
      response.should render_template(:edit)
    end

    it "should render edit template when model is valid" do
      we_are_logged_in
      User.any_instance.stubs(:update_attributes).returns(true)
      put :update, :id => "1"
      response.should render_template(:edit)
    end

  end
end
