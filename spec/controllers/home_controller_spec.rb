require 'spec_helper'

describe HomeController do
  describe "GET 'index'" do
    it "should return HTTP success" do
      get :index
      response.should be_success
    end
  end
end

