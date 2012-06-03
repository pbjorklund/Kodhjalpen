class Developer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :occupation, :city, :user_auth_attributes

  has_one :user_auth, as: :authable

  accepts_nested_attributes_for :user_auth

  validates_presence_of :city, :first_name, :last_name

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
