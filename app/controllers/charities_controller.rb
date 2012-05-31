class CharitiesController < ApplicationController
  def new
    @charity = Charity.new
  end
end
