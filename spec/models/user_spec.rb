# encoding: utf-8

require 'spec_helper'

describe User do
  let(:valid_user) { FactoryGirl.create :user }
  describe "#create" do

    #OPTIMIZE This is probably not the right way to test it...
    #it("requires non-blank city") { validates_presence_of :city }
    #it("requires non-blank email") { validates_presence_of :email }
    #it("requires non-blank first_name") { validates_presence_of :first_name }
    #it("requires non-blank last_name") { validates_presence_of :last_name }

    it "requires matching passwords" do
      dev = FactoryGirl.build(:user, password: "wrongpass", password_confirmation: "wrongpass")
      dev.should be_valid
    end

    it "fails on non-matching passwords" do
      dev = FactoryGirl.build(:user, password: "wrongpass")
      dev.should be_invalid
    end

    it "requires a password of > 6 characters" do
      dev = FactoryGirl.build(:user, password: "1")
      dev.should be_invalid
    end
       
    it "accepts a valid email adress" do
      ["p.bjorklund@gmail.com", "patrik.bjorklund@logica.com", "a@b.com"].map do |email|
        valid_user.email = email
        valid_user.should be_valid
      end
    end

    it "rejects an invalid email adress" do
      ["p.bjorklundgmail.com", "patrik.bjorklund@logicacom", "@b.com"].map do |email|
        valid_user.email = email
        valid_user.should be_invalid
      end
    end
  end

  #describe "#full_name" do
  #  it "should return the users full name" do
  #    valid_user.full_name.should == "Patrik Björklund"
  #  end
  #end
end

def validates_presence_of field
  subject.update_attribute(field, "  ")
  subject.should be_invalid
end
