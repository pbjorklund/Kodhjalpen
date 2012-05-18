class DevelopersController < ApplicationController
  def new
    @developer = Developer.new
  end
end
