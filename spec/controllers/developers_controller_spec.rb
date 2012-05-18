require 'spec_helper'

describe DevelopersController do
  describe "GET 'new'" do
    it "should return http success" do
      get :new
      response.should be_success
    end
  end

  describe "POSTJ 'create'" do
    it "should redirect to homepage on success" do
      post :create, developer: FactoryGirl.attributes_for(:developer)
      response.should redirect_to root_path
    end

    it "should render new on failure" do
      post :create, developer: Developer.new
      flash[:error].should_not be_nil
      response.should render_template 'new'
    end
  end
end
