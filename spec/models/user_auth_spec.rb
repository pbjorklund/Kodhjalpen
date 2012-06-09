# encoding: utf-8

require 'spec_helper'

describe UserAuth do
  let(:valid_user_auth) { FactoryGirl.create :user_auth }
  describe "#create" do

    it "requires matching passwords" do
      dev = FactoryGirl.build(:user_auth, password: "wrongpass", password_confirmation: "wrongpass")
      dev.should be_valid
    end

    it "fails on non-matching passwords" do
      dev = FactoryGirl.build(:user_auth, password: "wrongpass")
      dev.should be_invalid
    end

    it "requires a password of > 6 characters" do
      dev = FactoryGirl.build(:user_auth, password: "1")
      dev.should be_invalid
    end
       
    it "accepts a valid email adress" do
      ["p.bjorklund@gmail.com", "patrik.bjorklund@logica.com", "a@b.com"].map do |email|
        valid_user_auth.email = email
        valid_user_auth.should be_valid
      end
    end

    it "rejects an invalid email adress" do
      ["p.bjorklundgmail.com", "patrik.bjorklund@logicacom", "@b.com"].map do |email|
        valid_user_auth.email = email
        valid_user_auth.should be_invalid
      end
    end

    it "is not admin by default" do
      valid_user_auth.admin == false
    end

    it "can't get it's admin attribute set by mass assignment" do
      expect { valid_user_auth.update_attributes(admin: true) }.to raise_error
    end
  end
end

