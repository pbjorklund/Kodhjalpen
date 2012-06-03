
require 'spec_helper'

describe CharitiesController do
  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
  end

  describe "GET 'create'" do
    before(:each) do
      @attrs = {}
      @attrs[:charity] = FactoryGirl.attributes_for(:charity)
      @attrs[:charity][:user_auth_attributes] = FactoryGirl.attributes_for(:user_auth)
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
      Charity.any_instance.stub(:save).and_return(false)
      post :create, @attrs
      response.should render_template :new
    end
  end

  describe "GET 'edit'" do
    before(:each) do
      @charity = FactoryGirl.create(:charity)
      controller.stub(:current_user_auth).and_return(@charity.user_auth)
    end
    it "renders http success when id matches users id" do
      controller.stub(:current_user).and_return(@charity)
      get :edit, id: @charity.id
      response.should be_success
    end

    it "renders root_url when no user is signed in" do
      controller.stub(:current_user)
      get :edit, id: @charity.id
      response.should redirect_to root_url
    end

    it "renders root_url when trying to edit another users profile" do
      controller.stub(:current_user).and_return(mock_model(Charity))
      UserAuth.any_instance.stub(:id).and_return(1)
      get :edit, id: 2
      flash[:error].should_not be_nil
      response.should redirect_to root_url
    end
  end
  
  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end

    it "finds charitys" do
      FactoryGirl.create(:charity)
      get :index
      assigns(:charities).should_not be_nil
    end
  end

  describe "PUT 'update'" do
    before(:each) do
      @charity = FactoryGirl.create(:charity)
    end

    it "update action should render edit template when model is invalid" do
      Charity.any_instance.stub(:update_attributes).and_return(false)
      put :update, :id => @charity.id
      response.should render_template(:edit)
    end

    it "update action should redirect when model is valid" do
      Charity.any_instance.stub(:valid?).and_return(true)
      put :update, :id => @charity.id
      response.should redirect_to root_path
    end
  end

end

