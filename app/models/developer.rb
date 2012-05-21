class Developer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :city, :email, :first_name, :last_name, :occupation
  attr_accessible :password, :password_confirmation

  [:city,
   :email,
   :first_name,
   :last_name,
   :occupation].map { |field| validates field, presence: true }

  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  def full_name
    [first_name, last_name].join(' ')
  end
end
