require File.dirname(__FILE__) + '/../spec_helper'
 
describe IdeasController do
  
  before(:all) do
    @idea = mock('Idea')
    @idea.stubs(:id).returns("1")
    Idea.stubs(:find).returns([@idea])
  end

  describe "index action" do  
    it "should render index template" do
      get :index
      response.should render_template(:index)
    end
  end

  describe "show action" do
    it "should render show template" do
      get :show, :id => @idea.id
      response.should render_template(:show)
    end
  end

  describe "new action" do

    it "should redirect to the signup-page if not logged in" do
      we_are_not_logged_in
      get :new
      response.should redirect_to(join_welcome_path)
    end      

    it "should render new template" do
      we_are_logged_in
      get :new
      response.should render_template(:new)
    end
  end

  describe "create action" do

    before(:all) do
      
      #Idea.any_instance.stubs(:id).returns(1)
    end

    it "should redirect to the signup-page if not logged in" do
      we_are_not_logged_in
      get :create
      response.should redirect_to(join_welcome_path)
    end

    it "should render new template when model is invalid" do
      we_are_logged_in
      @current_user.stubs(:create_leadership).returns(Factory.build(:idea, :id => 1))
      Idea.any_instance.stubs(:valid?).returns(false)
      post :create
      response.should render_template(:new)
    end

    it "should redirect when model is valid" do
      we_are_logged_in
      @current_user.stubs(:create_leadership).returns(Factory.build(:idea, :id => 1))
      Idea.any_instance.stubs(:valid?).returns(true)
      post :create
      response.should redirect_to(idea_path(1))
    end
  end

  describe "edit action" do

   it "should redirect to the signup-page if not logged in" do
      get :edit, :id => "1"
      response.should redirect_to(join_welcome_path)
    end

    it "should render edit template" do
      we_are_logged_in
      Idea.stubs(:find).returns(Factory.build(:idea))
      get :edit, :id => "1"
      response.should render_template(:edit)
    end

  end

  describe "update action" do

    it "should redirect to the signup-page" do
      put :update, :id => "1"
      response.should redirect_to(join_welcome_path)
    end

    it "should render edit template when model is invalid" do
      we_are_logged_in
      Idea.stubs(:find).returns(Factory.build(:idea))
      Idea.any_instance.stubs(:update_attributes).returns(false)
      put :update, :id => "1"
      response.should render_template(:edit)
    end

    it "should redirect to show action when model is valid" do
      we_are_logged_in
      Idea.stubs(:find).returns(Factory.build(:idea, :id => 1))
      Idea.any_instance.stubs(:valid?).returns(true)
      put :update, :id => "1"
      response.should redirect_to(idea_path(1))
    end
  end

end
