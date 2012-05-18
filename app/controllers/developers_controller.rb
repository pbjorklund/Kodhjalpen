# encoding: utf-8
class DevelopersController < ApplicationController
  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(params[:developer])
    if
      @developer.save
      redirect_to root_path
      flash[:notice] = "Du är nu registrerad!"
    else
      render action: :new
      flash[:error] = "Kunde inte registrera dig"
    end
  end
end
