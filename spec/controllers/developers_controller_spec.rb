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
end

