require File.dirname(__FILE__) + '/../spec_helper'
 
describe UserSessionsController do
  integrate_views

  before(:all) do
    @user = Factory(:user, :username => 'tester', :password => 'tester')
    UserSession.create(:username => 'tester', :password => 'tester')
  end

  describe "create action" do
    it "should redirect to join-welcome path when model is invalid" do
      UserSession.any_instance.stubs(:valid?).returns(false)
      post :create
      response.should redirect_to(join_welcome_path)
    end

    it "should redirect to user profile when model is valid" do
      UserSession.any_instance.stubs(:valid?).returns(true)
      post :create
      response.should redirect_to(edit_user_path(:current))
    end

    it "should redirect to 'create idea' when model is valid and session is set accordingly" do
      UserSession.any_instance.stubs(:valid?).returns(true)
      session[:redirect_controller] = 'ideas'
      session[:redirect_action] = 'new'
      post :create
      response.should redirect_to(new_idea_path())
    end
  end

  describe "destroy action" do
    it "should destroy model and redirect to index action" do
      user_session = UserSession.first
      delete :destroy, :id => user_session
      response.should redirect_to(root_url)
      UserSession.exists?(user_session.id).should be_false
    end
  end
end
