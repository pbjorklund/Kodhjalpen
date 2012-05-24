class Developer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :occupation, :user_auth, :city
  has_one :user_auth, as: :authable

  validates_presence_of :city, :first_name, :last_name

end
