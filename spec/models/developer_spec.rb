require 'spec_helper'

describe Developer do
  describe "#create" do
    subject { FactoryGirl.create(:developer) }
    
    it("requires non-blank city")       { validates_presence_of :city }
    it("requires non-blank first_name") { validates_presence_of :first_name }
    it("requires non-blank last_name")  { validates_presence_of :last_name }

    it "gets destroyed when deleting UserAuth" do
      dev = subject
      expect { dev.user_auth.destroy }.to change(Developer, :count).by(-1)
    end
  end

  def validates_presence_of field
    subject.update_attribute(field, " ")
    subject.should be_invalid
  end
end
