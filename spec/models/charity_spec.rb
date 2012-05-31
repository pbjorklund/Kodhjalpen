require 'spec_helper'

describe Charity do
  describe "#create" do
    subject { FactoryGirl.create(:charity) }
    
    it("requires non-blank city")       { validates_presence_of :city }
    it("requires non-blank name") { validates_presence_of :name }
    it("requires non-blank needs_help_with")  { validates_presence_of :needs_help_with }
    it("requires non-blank mission")  { validates_presence_of :mission }

    it "gets destroyed when deleting UserAuth" do
      charity = subject
      expect { charity.user_auth.destroy }.to change(Charity, :count).by(-1)
    end
  end

  def validates_presence_of field
    subject.update_attribute(field, " ")
    subject.should be_invalid
  end
end
