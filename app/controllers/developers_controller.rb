class DevelopersController < ApplicationController
  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(params[:developer])
    if
      @developer.save
      redirect_to root_path
    else
      render action: :new
      flash[:error] = "Could not create developer"
    end
  end
end
