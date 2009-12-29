require File.dirname(__FILE__) + '/../spec_helper'
 
describe IdeasController do
  integrate_views

  before(:all) do
    @idea = Factory(:idea)
    @user = Factory(:user)
    #activate_authlogic
  end

  before(:each) do
    activate_authlogic
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
    describe "logged in" do
      before(:each) do
        login_user(@user)
      end
      it "should render new template" do
        get :new
        response.should render_template(:new)
      end
    end
    
    describe "not logged in" do
      it "should redirect to the signup-page" do
        get :new
        response.should redirect_to(join_welcome_path)
      end
    end
  end

  describe "create action" do
    describe "logged in" do
      before(:each) do
        login_user(@user)
      end

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

    describe "not logged in" do
      it "should redirect to the signup-page" do
        get :create
        response.should redirect_to(join_welcome_path)
      end
    end
  end

  describe "edit action" do
    describe "logged in" do
      before(:each) do
        login_user(@user)
      end

      it "should render edit template" do
        get :edit, :id => Idea.first
        response.should render_template(:edit)
      end
    end

    describe "not logged in" do
      it "should redirect to the signup-page" do
        get :edit, :id => Idea.first
        response.should redirect_to(join_welcome_path)
      end
    end
  end

  describe "update action" do
    describe "logged in" do
      before(:each) do
        login_user(@user)
      end

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

    describe "not logged in" do
      it "should redirect to the signup-page" do
        put :update, :id => Idea.first
        response.should redirect_to(join_welcome_path)
      end
    end
  end

  describe "destroy action" do
    xit "destroy action should destroy model and redirect to index action" do
      idea = Idea.first
      delete :destroy, :id => idea
      response.should redirect_to(ideas_url)
      Idea.exists?(idea.id).should be_false
    end
  end

  describe "random action" do
    it "should render random template" do
      get :random
      response.should render_template(:random)
    end
  end

end
