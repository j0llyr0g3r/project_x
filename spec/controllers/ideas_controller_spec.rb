require File.dirname(__FILE__) + '/../spec_helper'
 
describe IdeasController do
  integrate_views

  before(:all) do
    @idea = Factory(:idea)
    @user = Factory(:user)
    #activate_authlogic
  end

  before(:each) do
    login(@user)
    activate_authlogic
  end

  def index
    if(params[:user_id])
      @ideas = current_user.leaderships
    else
      @ideas = Idea.find(:all, :order => "created_at DESC", :limit => DISPLAY_LIMIT)
    end
  end

  describe "index action" do  
    it "should render index template" do
      get :index
      response.should render_template(:index)
    end
  end

  describe "show action" do
    it "should render show template" do
      get :show, :id => Idea.first
      response.should render_template(:show)
    end
  end

  describe "new action" do
    it "should render new template" do
      get :new
      response.should render_template(:new)
    end
  end

  describe "create action" do
    it "should render new template when model is invalid" do
      Idea.any_instance.stubs(:valid?).returns(false)
      post :create
      response.should render_template(:new)
    end

    it "should redirect when model is valid" do
      Idea.any_instance.stubs(:valid?).returns(true)
      post :create
      response.should redirect_to(idea_url(assigns[:idea]))
    end
  end

  describe "edit action" do
    it "should render edit template" do
      get :edit, :id => Idea.first
      response.should render_template(:edit)
    end
  end

  describe "edit action" do
    it "update action should render edit template when model is invalid" do
      Idea.any_instance.stubs(:valid?).returns(false)
      put :update, :id => Idea.first
      response.should render_template(:edit)
    end

    it "update action should redirect when model is valid" do
      Idea.any_instance.stubs(:valid?).returns(true)
      put :update, :id => Idea.first
      response.should redirect_to(idea_url(assigns[:idea]))
    end
  end

  describe "edit action" do
    it "destroy action should destroy model and redirect to index action" do
      idea = Idea.first
      delete :destroy, :id => idea
      response.should redirect_to(ideas_url)
      Idea.exists?(idea.id).should be_false
    end
  end
end
