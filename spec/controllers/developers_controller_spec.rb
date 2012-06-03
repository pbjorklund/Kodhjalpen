require 'spec_helper'

describe DevelopersController do
  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
  end

  describe "GET 'create'" do
    before(:each) do
      @attrs = {}
      @attrs[:developer] = FactoryGirl.attributes_for(:developer)
      @attrs[:developer][:user_auth_attributes] = FactoryGirl.attributes_for(:user_auth)
    end

    it "redirects to root_path given a valid hash" do
      post :create, @attrs
      response.should redirect_to root_path
    end

    it "renders #new given an invalid hash" do
      @attrs = nil
      post :create, @attrs
      response.should render_template :new
    end

    it "renders #new on duplicate entries" do
      FactoryGirl.create(:developer)
      post :create, @attrs
      response.should render_template :new
    end
  end

  describe "GET 'edit'" do
    before(:each) do
      @developer = FactoryGirl.create(:developer)
      controller.stub(:current_user_auth).and_return(@developer.user_auth)
    end
    it "renders http success when id matches users id" do
      controller.stub(:current_user).and_return(@developer)
      get :edit, id: @developer.id
      response.should be_success
    end

    it "renders root_url when no user is signed in" do
      controller.stub(:current_user)
      get :edit, id: @developer.id
      response.should redirect_to root_url
    end

    it "renders root_url when trying to edit another users profile" do
      @second_developer = FactoryGirl.create(:second_developer)
     
      controller.stub(:current_user).and_return(@developer)
      get :edit, id: @second_developer.id
      flash[:error].should_not be_nil
      response.should redirect_to root_url
    end
  end
  
  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end

    it "finds developers" do
      FactoryGirl.create(:developer)
      get :index
      assigns(:developers).should_not be_nil
    end
  end

  describe "PUT 'update'" do
    before(:each) do
      @developer = FactoryGirl.create(:developer)
    end

    it "update action should render edit template when model is invalid" do
      Developer.any_instance.stub(:update_attributes).and_return(false)
      put :update, :id => @developer.id
      response.should render_template(:edit)
    end

    it "update action should redirect when model is valid" do
      Developer.any_instance.stub(:valid?).and_return(true)
      put :update, :id => @developer.id
      response.should redirect_to root_path
    end
  end

end

