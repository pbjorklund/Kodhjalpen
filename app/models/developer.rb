class Developer < ActiveRecord::Base
  attr_accessible :city, :email, :first_name, :last_name, :occupation

  [:city,
   :email,
   :first_name,
   :last_name,
   :occupation].map { |field| validates field, presence: true }

  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
end
