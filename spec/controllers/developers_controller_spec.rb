require 'spec_helper'

describe DevelopersController do
  describe "GET 'new'" do
    it "should return http success" do
      get :new
      response.should be_success
    end
  end
end
