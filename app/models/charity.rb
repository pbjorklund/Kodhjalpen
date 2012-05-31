class Charity < ActiveRecord::Base
  has_one :user_auth, as: :authable
  accepts_nested_attributes_for :user_auth

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :city, :mission, :name, :needs_help_with, :user_auth_attributes

  validates_presence_of :city, :name, :needs_help_with, :mission
end
